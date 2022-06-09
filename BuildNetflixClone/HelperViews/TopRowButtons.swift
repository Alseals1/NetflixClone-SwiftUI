import SwiftUI

struct TopRowButtons: View {
    @Binding var topRowSelection: HomeTopRow
    @Binding var selectedGenre: HomeGenre
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    
    
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                
                Button(action:{
                    topRowSelection = .home
                },
                       label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(.plain)
                
                
                Button(action:{
                    topRowSelection = .tvShow
                },
                       label: {
                    Text("TV Shows")
                })
                .buttonStyle(.plain)
                
                
                
                Spacer()
                
                Button(action:{
                    topRowSelection = .movies
                },
                       label: {
                    Text("Movies")
                })
                .buttonStyle(.plain)
                
                Spacer()
                
                Button(action:{
                    topRowSelection = .myList
                },
                       label: {
                    Text("My List")
                })
                .buttonStyle(.plain)
            }.padding(.leading, 10)
                .padding(.trailing, 30)
            
        case .tvShow, .movies, .myList:
            HStack(spacing: 20) {
                
                Button(action:{
                    topRowSelection = .home
                },
                       label: {
                    Image("netflix_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                })
                .buttonStyle(.plain)
                
                
                
                Button(action:{
                    showTopRowSelection = true
                },
                       label: {
                    Text(topRowSelection.rawValue)
                        .font(.system(size: 18))
                    Image(systemName: "triangle.fill")
                        .rotationEffect(.degrees(180), anchor: .center )
                        .font(.system(size: 10))
                })
                .buttonStyle(.plain)
                
                Button(action:{
                    showGenreSelection = true
                },
                       label: {
                    HStack {
                        Text(selectedGenre.rawValue)
                            .font(.system(size: 12))
                        Image(systemName: "triangle.fill")
                            .rotationEffect(.degrees(180), anchor: .center )
                            .font(.system(size: 6))
                    }
                })
                .buttonStyle(.plain)
                
                
                Spacer()
                
            }.padding(.leading, 30)
                .padding(.trailing, 30)
        }
   
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShow = "TV Show"
    case movies = "Movies"
    case myList = "My List"
}

