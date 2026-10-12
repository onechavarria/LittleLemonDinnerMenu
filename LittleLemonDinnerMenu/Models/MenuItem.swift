import Foundation

struct MenuItem: MenuItemProtocol {

    let id: UUID
    let title: String
    let price: Double
    let menuCategory: MenuCategory

    var ordersCount: Int
    var priceInt: Int
    var ingredients: [Ingredient]

    init(
        id: UUID = UUID(),
        title: String,
        price: Double,
        menuCategory: MenuCategory,
        ordersCount: Int = 0,
        ingredients: [Ingredient] = []
    ) {
        self.id = id
        self.title = title
        self.price = price
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.priceInt = Int(price)
        self.ingredients = ingredients
    }

    var formattedPrice: String {
        String(format: "$%.2f", price)
    }

    var ingredientsDescription: String {
        guard !ingredients.isEmpty else {
            return "Sin ingredientes registrados"
        }

        return ingredients
            .map { $0.rawValue }
            .joined(separator: ", ")
    }
}
