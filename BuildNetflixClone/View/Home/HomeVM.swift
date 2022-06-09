import Foundation


class HomeVM: ObservableObject {
    
    // The String is the Category of the movie
    @Published var movies: [String: [Movie]] = [:]
    
    public var allcatorgories: [String] {
        return movies.keys.map({ String($0) })
    }
    func getMovives(forCategory category: String, andHomeRow homeRow: HomeTopRow) -> [Movie] {
        switch homeRow {
        case .home:
            return movies[category] ?? []
        case .tvShow:
            return (movies[category] ?? []).filter({$0.movieType == .movie})
        case .movies:
            return (movies[category] ?? []).filter({$0.movieType == .tvShow})
        case .myList:
            return  movies[category] ?? []
        }
        
        
    }
    
    init() {
        setupMovie()
    }
    
    func setupMovie() {
        movies["Watch It Again"] = exampleMovies
        movies["Trending Now"] = exampleMovies
        movies["Standup-Up"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
      
        
    }
}
