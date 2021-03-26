import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var mainWindowViewModel: MainWindowViewModel // This property is populated by the instance of MainWindowViewModel() created in RecipeTabView
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
