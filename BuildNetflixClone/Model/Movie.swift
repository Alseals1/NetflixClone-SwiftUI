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
    
    //Personlization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var moreLikeThis: [Movie]
    
    var episodes: [Episode]?

    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotion: String?
    
    var trailers: [Trailers]
    
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
    
    var episodeIndoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let currentEpisode = currentEpisode {
            return currentEpisode.description
        } else {
            return
            defaultEpisode.description
        }
    }
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}


enum MovieType {
    case movie
    case tvShow
    
}
