import Foundation

class RecipeModel: Identifiable, Decodable {
    
    // Properties
    var id: UUID?  // Optional because not set by JSON: will be set after the fact in code
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
    
    // Initializers
    
    // Methods
    
}
