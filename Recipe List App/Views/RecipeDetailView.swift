import SwiftUI

struct RecipeDetailView: View {
    
    // Properties
    var recipe: RecipeModel  // We will connect this to the List View: the List View will decide which recipe gets sent to this variable based on what the user taps on
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
             
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.top, .bottom], 5)
                    
                    ForEach (recipe.ingredients) { item in
                        Text("\u{2022} \(item.name)")
                    }
                }
                .padding(.horizontal)
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    Text("Directions")
                        .font(.headline)
                        .padding([.top, .bottom], 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text("Step \(index+1): \(recipe.directions[index])")
                            .padding(.bottom, 5)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe, and pass it in the detail view so that we can see a preview
        let model = MainWindowViewModel()
        
        // Pass the first recipe into RecipeDetailView for preview
        RecipeDetailView(recipe: model.recipes[0])
    }
}
