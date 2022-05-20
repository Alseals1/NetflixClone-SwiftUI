import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnail: URL
    
    var categories: [String]
    
    //MovieDetailView
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    var episodes: [Episode]?
    
    var promotion: String?
    
    var numberOfSeasonDisplay: String {
        if let num = numberOfSeason {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}
