import Foundation

class MainWindowViewModel: ObservableObject {
    
    // Properties
    @Published var recipes: [RecipeModel] = []
    
    // Initializers
    init() {
        
        // Create instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        // Set the recipes property
        
    }
    
    // Methods
}
