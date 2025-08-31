import SwiftUI

@main
struct NetworkedApp: App {
    var body: some Scene {
        WindowGroup {
            CoffeeListView() // ← アプリ起動時にリスト画面を表示
        }
    }
}
