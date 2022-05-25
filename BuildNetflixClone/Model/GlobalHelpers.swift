import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL1 = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

let exampleTrailer1 = Trailers(name: "Season 3 Trailer ", videoURL: exampleVideoURL, thumbnailImageURL: randonExampleImageURL)
let exampleTrailer2 = Trailers(name: "Heros Journey ", videoURL: exampleVideoURL, thumbnailImageURL: randonExampleImageURL)
let exampleTrailer3 = Trailers(name: "BlindSpot ", videoURL: exampleVideoURL, thumbnailImageURL: randonExampleImageURL)



let episode1 = Episode(
                       name: "Creed",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageString: "https://picsum.photos/300/104",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 51,
                       videoURL: exampleVideoURL)
let episode2 = Episode(
                       name: "GodFather II",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageString: "https://picsum.photos/300/105",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode3 = Episode(
                       name: "Cat In The Hat",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageString: "https://picsum.photos/300/106",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 85,
                       videoURL: exampleVideoURL)

let episode4 = Episode(
                       name: "Creed",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageString: "https://picsum.photos/300/107",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 51,
                       videoURL: exampleVideoURL)
let episode5 = Episode(
                       name: "GodFather II",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageString: "https://picsum.photos/300/108",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode6 = Episode(
                       name: "Cat In The Hat",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageString: "https://picsum.photos/300/109",
                       description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.",
                       length: 85,
                       videoURL: exampleVideoURL)

var allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


var randonExampleImageURL: URL {
    return [exampleImageURL1, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL1
}
let exampleTrailers = [exampleTrailer1,exampleTrailer3,exampleTrailer2]

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "Dark",
                          thumbnail: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeason: 3,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8, exampleMovie9],
                          episodes: allExampleEpisodes,
                          trailers: exampleTrailers)

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Boss Baby",
                          thumbnail: URL(string: "https://picsum.photos/200/309")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeason: 3,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Coco Melon",
                          thumbnail: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 1,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnail: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 8,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnail: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting",
                                       "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [],
                          promotion: "Watch Now", trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "Bright",
                          thumbnail: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "Den of Theives",
                          thumbnail: URL(string: "https://picsum.photos/200/306")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie8 = Movie(id: UUID().uuidString,
                          name: "22 July",
                          thumbnail: URL(string: "https://picsum.photos/200/307")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 9,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)
let exampleMovie9 = Movie(id: UUID().uuidString,
                          name: "Shrek",
                          thumbnail: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals",
                          moreLikeThis: [], trailers: exampleTrailers)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7, exampleMovie8, exampleMovie9].shuffled()
}
let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginning and Ending", description: "The Boss Baby brings his big brother Tim to the office to teach him the art of business in this animated series sprung from the hit film.", season: 3, episode: 2)


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(
        colors: [Color.black.opacity(0.0), Color.black.opacity(0.90)]),
                   startPoint: .top,
                   endPoint: .bottom)
}

extension String {
    func widthForString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
