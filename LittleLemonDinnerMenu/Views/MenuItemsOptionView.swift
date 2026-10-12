import SwiftUI

enum MenuSortOption: String, CaseIterable, Identifiable {
    case mostPopular = "Más populares"
    case price = "Precio $-$$$"
    case alphabetical = "A-Z"

    var id: String {
        rawValue
    }
}


struct MenuItemsOptionView: View {


    @Binding var selectedCategories: Set<MenuCategory>
    @Binding var selectedSortOption: MenuSortOption

    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            Form {

                Section("CATEGORÍAS SELECCIONADAS") {
                    ForEach(MenuCategory.allCases) { category in
                        Button {
                            toggleCategory(category)
                        } label: {
                            HStack {
                                Text(category.rawValue)
                                    .foregroundStyle(.primary)

                                Spacer()

                                if selectedCategories.contains(category) {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        }
                    }
                }

                Section("ORDENAR POR") {
                    ForEach(MenuSortOption.allCases) { option in
                        Button {
                            selectedSortOption = option
                        } label: {
                            HStack {
                                Text(option.rawValue)
                                    .foregroundStyle(.primary)

                                Spacer()

                                if selectedSortOption == option {
                                    Image(systemName: "checkmark")
                                        .foregroundStyle(.blue)
                                }
                            }
                        }
                    }
                }
            }


            .navigationTitle("Filtro")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }

    private func toggleCategory(_ category: MenuCategory) {
        if selectedCategories.contains(category) {
            selectedCategories.remove(category)
        } else {
            selectedCategories.insert(category)
        }
    }
}

#Preview {
    MenuItemsOptionView(
        selectedCategories: .constant(Set(MenuCategory.allCases)),
        selectedSortOption: .constant(.mostPopular)
    )
}
