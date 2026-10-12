import Foundation

enum Ingredient: String, CaseIterable, Identifiable {
    case spinach = "Espinacas"
    case broccoli = "Brócoli"
    case carrot = "Zanahoria"
    case pasta = "Pasta"
    case tomatoSauce = "Salsa de tomate"


    var id: String {
        rawValue
    }


    var description: String {
        rawValue
    }
}
