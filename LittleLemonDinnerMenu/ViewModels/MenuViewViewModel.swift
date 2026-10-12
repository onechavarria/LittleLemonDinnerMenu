import Foundation
import Combine

@MainActor
final class MenuViewViewModel: ObservableObject {

    @Published var foodMenuItems: [MenuItem]
    @Published var drinkMenuItems: [MenuItem]
    @Published var dessertMenuItems: [MenuItem]

    init() {
        self.foodMenuItems = MenuMockData.foods
        self.drinkMenuItems = MenuMockData.drinks
        self.dessertMenuItems = MenuMockData.desserts
    }

    var allMenuItems: [MenuItem] {
        foodMenuItems + drinkMenuItems + dessertMenuItems
    }


    var totalItems: Int {
        allMenuItems.count
    }



    func items(for category: MenuCategory) -> [MenuItem] {
        switch category {
        case .food:
            return foodMenuItems
        case .drink:
            return drinkMenuItems
        case .dessert:
            return dessertMenuItems
        }
    }
}
