import SwiftUI


struct MenuItemCard: View {


    let item: MenuItem


    var body: some View {
        VStack(spacing: 6) {

            Rectangle()
                .fill(Color.black)
                .aspectRatio(1, contentMode: .fit)
                .overlay {
                    Image(systemName: "fork.knife")
                        .font(.system(size: 25))
                        .foregroundStyle(.white.opacity(0.65))
                }

            Text(item.title)
                .font(.system(size: 10))
                .foregroundStyle(.primary)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .frame(height: 28, alignment: .top)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(item.title)
    }
}


#Preview {
    MenuItemCard(item: MenuMockData.foods[0])
        .frame(width: 120)
        .padding()
}
