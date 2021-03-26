import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var mainWindowViewModel: MainWindowViewModel // This property is populated by the instance of MainWindowViewModel() created in RecipeTabView
    
    var body: some View {

        NavigationView {
            
            List(mainWindowViewModel.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                    })
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct MainWindowView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
