import Foundation


enum MenuCategory: String, CaseIterable, Identifiable {
    case food = "Comida"
    case drink = "Bebida"
    case dessert = "Postre"


    var id: String {
        rawValue
    }


    var title: String {
        rawValue
    }
}
