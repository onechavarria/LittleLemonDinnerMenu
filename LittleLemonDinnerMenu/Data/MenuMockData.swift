import Foundation

enum MenuMockData {


    static let foods: [MenuItem] = [
        MenuItem(
            title: "Comida 1 - Pasta italiana",
            price: 12.99,
            menuCategory: .food,
            ordersCount: 35,
            ingredients: [.pasta, .tomatoSauce]
        ),
        MenuItem(
            title: "Comida 2 - Ensalada verde",
            price: 8.99,
            menuCategory: .food,
            ordersCount: 28,
            ingredients: [.spinach, .broccoli, .carrot]
        ),
        MenuItem(
            title: "Comida 3 - Pasta con espinacas",
            price: 11.50,
            menuCategory: .food,
            ordersCount: 42,
            ingredients: [.pasta, .spinach]
        ),
        MenuItem(
            title: "Comida 4 - Brócoli al vapor",
            price: 7.99,
            menuCategory: .food,
            ordersCount: 18,
            ingredients: [.broccoli, .carrot]
        ),
        MenuItem(
            title: "Comida 5 - Pasta especial",
            price: 10.99,
            menuCategory: .food,
            ordersCount: 1000,
            ingredients: [.spinach, .broccoli, .carrot, .pasta, .tomatoSauce]
        ),
        MenuItem(
            title: "Comida 6 - Ensalada de zanahoria",
            price: 6.99,
            menuCategory: .food,
            ordersCount: 15,
            ingredients: [.carrot, .spinach]
        ),
        MenuItem(
            title: "Comida 7 - Pasta mediterránea",
            price: 13.50,
            menuCategory: .food,
            ordersCount: 48,
            ingredients: [.pasta, .tomatoSauce, .broccoli]
        ),
        MenuItem(
            title: "Comida 8 - Vegetales mixtos",
            price: 9.50,
            menuCategory: .food,
            ordersCount: 31,
            ingredients: [.broccoli, .carrot, .spinach]
        ),
        MenuItem(
            title: "Comida 9 - Pasta con brócoli",
            price: 12.50,
            menuCategory: .food,
            ordersCount: 23,
            ingredients: [.pasta, .broccoli]
        ),
        MenuItem(
            title: "Comida 10 - Ensalada italiana",
            price: 8.50,
            menuCategory: .food,
            ordersCount: 39,
            ingredients: [.spinach, .tomatoSauce]
        ),
        MenuItem(
            title: "Comida 11 - Pasta primavera",
            price: 14.99,
            menuCategory: .food,
            ordersCount: 52,
            ingredients: [.pasta, .carrot, .broccoli]
        ),
        MenuItem(
            title: "Comida 12 - Especial Little Lemon",
            price: 15.99,
            menuCategory: .food,
            ordersCount: 75,
            ingredients: [.pasta, .spinach, .tomatoSauce]
        )
    ]

    static let drinks: [MenuItem] = [
        MenuItem(
            title: "Bebida 1 - Limonada",
            price: 3.99,
            menuCategory: .drink,
            ordersCount: 90
        ),
        MenuItem(
            title: "Bebida 2 - Agua mineral",
            price: 2.50,
            menuCategory: .drink,
            ordersCount: 65
        ),
        MenuItem(
            title: "Bebida 3 - Té helado",
            price: 3.50,
            menuCategory: .drink,
            ordersCount: 43
        ),
        MenuItem(
            title: "Bebida 4 - Jugo de naranja",
            price: 4.50,
            menuCategory: .drink,
            ordersCount: 52
        ),
        MenuItem(
            title: "Bebida 5 - Café",
            price: 2.99,
            menuCategory: .drink,
            ordersCount: 72
        ),
        MenuItem(
            title: "Bebida 6 - Capuchino",
            price: 4.99,
            menuCategory: .drink,
            ordersCount: 36
        ),
        MenuItem(
            title: "Bebida 7 - Batido natural",
            price: 5.50,
            menuCategory: .drink,
            ordersCount: 29
        ),
        MenuItem(
            title: "Bebida 8 - Limonada especial",
            price: 4.25,
            menuCategory: .drink,
            ordersCount: 81
        )
    ]

    static let desserts: [MenuItem] = [
        MenuItem(
            title: "Postre 1 - Tarta de limón",
            price: 6.99,
            menuCategory: .dessert,
            ordersCount: 64
        ),
        MenuItem(
            title: "Postre 2 - Cheesecake",
            price: 7.50,
            menuCategory: .dessert,
            ordersCount: 58
        ),
        MenuItem(
            title: "Postre 3 - Helado artesanal",
            price: 5.99,
            menuCategory: .dessert,
            ordersCount: 47
        ),
        MenuItem(
            title: "Postre 4 - Mousse de chocolate",
            price: 6.50,
            menuCategory: .dessert,
            ordersCount: 39
        )
    ]



    static var allItems: [MenuItem] {
        foods + drinks + desserts
    }
}
