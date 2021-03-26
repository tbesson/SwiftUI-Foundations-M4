import Foundation

class DataService {
    
    // Properties
    
    // Initializers
    
    // Methods
    static func getLocalData() -> [RecipeModel] {
        
        // Parse local JSON data
        
        // Get a URL path to the JSON file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Alternative to optional binding
        guard pathString != nil else {
            return [RecipeModel]()  // Return nil array of RecipeModel
        }
        
        // Create a URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do {
            
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON Decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([RecipeModel].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    // Add unique IDs to ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // Return the recipes
                return recipeData
                
            } catch {
                
                print(error)
                
            }
        } catch {
            
            print(error)
            
        }
        
        return [RecipeModel]()
        
    }
    
}
