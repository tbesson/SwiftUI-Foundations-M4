import SwiftUI

@main
struct Recipe_List_App: App {
    var body: some Scene {
        WindowGroup {
            // Application starts up calling Recipe Tab View
            RecipeTabView()
        }
    }
}
