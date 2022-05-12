import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnail: URL
    
    var categories: [String]
}