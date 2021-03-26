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
    var highlights: [String]
    var ingredients: [Ingredient]
    var directions: [String]

}

class Ingredient: Identifiable, Decodable {
    // Identifiable makes the class work in a SwiftUI List
    // Decodable lets us apply the Decodable protocol
    
    var id: UUID? // We need this because we are using the Identifiable protocol
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
