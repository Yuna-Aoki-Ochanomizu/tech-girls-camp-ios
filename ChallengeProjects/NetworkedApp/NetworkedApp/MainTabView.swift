import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CoffeeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Coffees")
                }

            FavoriteView()  // ← Text("Favorites View") の代わりに呼ぶ
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("お気に入り")
                }
        }

    }
}

#Preview {
    MainTabView()
}
