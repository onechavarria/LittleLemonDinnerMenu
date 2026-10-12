
import Foundation

protocol MenuItemProtocol: Identifiable {

    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }

    var ordersCount: Int { get set }
    var priceInt: Int { get set }
    var ingredients: [Ingredient] { get set }
}
