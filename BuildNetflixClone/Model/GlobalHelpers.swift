import Foundation
import SwiftUI


let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "Dark",
                          thumbnail: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 3,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals")

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Boss Baby",
                          thumbnail: URL(string: "https://picsum.photos/200/309")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeason: 3,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Coco Melon",
                          thumbnail: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 1,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals,Khloe Carter, Khali Carter, Jabarrion Seals")
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnail: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 8,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals")
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
                          promotion: "Watch Now")
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "Bright",
                          thumbnail: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals")
let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "Den of Theives",
                          thumbnail: URL(string: "https://picsum.photos/200/306")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals")
let exampleMovie8 = Movie(id: UUID().uuidString,
                          name: "22 July",
                          thumbnail: URL(string: "https://picsum.photos/200/307")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA", numberOfSeason: 9,
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals")
let exampleMovie9 = Movie(id: UUID().uuidString,
                          name: "Shrek",
                          thumbnail: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          defaultEpisode: exampleEpisodeInfo1,
                          creators: "Alandis Seals",
                          cast: "Aria Seals, Khloe Carter, Khali Carter, Jabarrion Seals")

let exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
    exampleMovie7,
    exampleMovie8,
    exampleMovie9
]

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
