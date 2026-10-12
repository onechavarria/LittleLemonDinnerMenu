import SwiftUI

struct MenuItemsView: View {


    @StateObject private var viewModel = MenuViewViewModel()


    @State private var showingOptions = false

    @State private var selectedCategories: Set<MenuCategory> =
        Set(MenuCategory.allCases)

    @State private var selectedSortOption: MenuSortOption =
        .mostPopular


    private let columns = [
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8),
        GridItem(.flexible(), spacing: 8)
    ]


    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {


                    if selectedCategories.contains(.food) {
                        menuSection(
                            title: "Comida",
                            items: sortedItems(viewModel.foodMenuItems)
                        )
                    }

                    if selectedCategories.contains(.drink) {
                        menuSection(
                            title: "Bebidas",
                            items: sortedItems(viewModel.drinkMenuItems)
                        )
                    }

                    if selectedCategories.contains(.dessert) {
                        menuSection(
                            title: "Postres",
                            items: sortedItems(viewModel.dessertMenuItems)
                        )
                    }

                    if selectedCategories.isEmpty {
                        ContentUnavailableView(
                            "Sin categorías",
                            systemImage: "line.3.horizontal.decrease.circle",
                            description: Text(
                                "Selecciona una categoría para visualizar los productos."
                            )
                        )
                    }
                }
                .padding()
            }

            .navigationTitle("Menú")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showingOptions = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .accessibilityLabel("Opciones del menú")
                }
            }


            .sheet(isPresented: $showingOptions) {
                MenuItemsOptionView(
                    selectedCategories: $selectedCategories,
                    selectedSortOption: $selectedSortOption
                )
            }
        }
    }


    private func sortedItems(_ items: [MenuItem]) -> [MenuItem] {
        switch selectedSortOption {

        case .mostPopular:
            return items.sorted {
                $0.ordersCount > $1.ordersCount
            }

        case .price:
            return items.sorted {
                $0.price < $1.price
            }

        case .alphabetical:
            return items.sorted {
                $0.title.localizedStandardCompare($1.title)
                    == .orderedAscending
            }
        }
    }


    private func menuSection(
        title: String,
        items: [MenuItem]
    ) -> some View {
        VStack(alignment: .leading, spacing: 12) {

            Text(title)
                .font(.title2)
                .fontWeight(.semibold)

            LazyVGrid(columns: columns, spacing: 14) {
                ForEach(items) { item in
                    NavigationLink {
                        MenuItemDetailsView(item: item)
                    } label: {
                        MenuItemCard(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}


#Preview {
    MenuItemsView()
}
