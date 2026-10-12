import SwiftUI

struct MenuItemDetailsView: View {

    let item: MenuItem

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {


                Text(item.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)


                Image("LittleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 260)
                    .frame(height: 300)


                VStack(spacing: 10) {

                    Text("Precio: \(item.formattedPrice)")
                        .font(.headline)

                    Text("Pedidos: \(item.ordersCount)")
                        .font(.subheadline)

                    Text("Categoría: \(item.menuCategory.rawValue)")
                        .font(.subheadline)
                }
                .foregroundStyle(.primary)

                VStack(spacing: 8) {

                    Text("Ingredientes:")
                        .font(.headline)

                    if item.ingredients.isEmpty {
                        Text("Sin ingredientes registrados")
                            .font(.subheadline)
                    } else {
                        ForEach(item.ingredients) { ingredient in
                            Text(ingredient.rawValue)
                                .font(.subheadline)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
        }
        .navigationTitle("Detalles")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        MenuItemDetailsView(item: MenuMockData.foods[4])
    }
}
