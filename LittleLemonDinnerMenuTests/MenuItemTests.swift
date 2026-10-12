import XCTest
@testable import LittleLemonDinnerMenu

final class MenuItemTests: XCTestCase {


    func testMenuItemTitle() {

        let expectedTitle = "Comida 5"

        let menuItem = MenuItem(
            title: expectedTitle,
            price: 10.99,
            menuCategory: .food,
            ingredients: [.spinach, .pasta]
        )

        XCTAssertEqual(menuItem.title, expectedTitle)
    }


    func testMenuItemIngredients() {

        let expectedIngredients: [Ingredient] = [
            .spinach,
            .broccoli,
            .carrot,
            .pasta,
            .tomatoSauce
        ]

        let menuItem = MenuItem(
            title: "Comida 5",
            price: 10.99,
            menuCategory: .food,
            ingredients: expectedIngredients
        )

        XCTAssertEqual(
            menuItem.ingredients,
            expectedIngredients
        )
    }

    func testMenuItemUniqueIdentifier() {

        let firstItem = MenuItem(
            title: "Comida 1",
            price: 8.99,
            menuCategory: .food
        )

        let secondItem = MenuItem(
            title: "Comida 2",
            price: 9.99,
            menuCategory: .food
        )

        XCTAssertNotEqual(firstItem.id, secondItem.id)
    }


    func testMenuItemCategory() {

        let menuItem = MenuItem(
            title: "Limonada",
            price: 3.99,
            menuCategory: .drink
        )

        XCTAssertEqual(menuItem.menuCategory, .drink)
    }


    func testMenuItemsCount() {

        XCTAssertEqual(MenuMockData.foods.count, 12)
        XCTAssertEqual(MenuMockData.drinks.count, 8)
        XCTAssertEqual(MenuMockData.desserts.count, 4)

        XCTAssertEqual(MenuMockData.allItems.count, 24)
    }

    func testMenuItemProtocolConformance() {

        var menuItem: any MenuItemProtocol = MenuItem(
            title: "Pasta italiana",
            price: 12.99,
            menuCategory: .food
        )

        menuItem.ordersCount = 20
        menuItem.priceInt = 13
        menuItem.ingredients = [.pasta, .tomatoSauce]

        XCTAssertEqual(menuItem.ordersCount, 20)
        XCTAssertEqual(menuItem.priceInt, 13)
        XCTAssertEqual(menuItem.ingredients.count, 2)
    }


    func testFormattedPrice() {

        let menuItem = MenuItem(
            title: "Ensalada",
            price: 8.50,
            menuCategory: .food
        )

        XCTAssertEqual(menuItem.formattedPrice, "$8.50")
    }
}
