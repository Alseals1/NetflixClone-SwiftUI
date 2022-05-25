
import SwiftUI

enum CustomTabs: String {
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}



struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTabs = .episode
    
    var tabs: [CustomTabs]
    var movie: Movie
    
    
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func widthForTab(_ tab: CustomTabs) -> CGFloat {
        let string = tab.rawValue
        return string.widthForString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
   
    var body: some View {
        
        VStack {
            // Custom tab picker
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            //buttons
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)

                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
        
                        
                    }
                }
            }
            switch currentTab {
            case .episode:
                EpisodesView(showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason, episodes: movie.episodes ?? [])
            case .trailers:
                TrailerListView(trailers: movie.trailers)
            case .more:
                MoreLikeThisView(movies: movie.moreLikeThis)
            }
        }.foregroundColor(.white)
       
    }
}

struct CustonTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            
            CustomTabSwitcher(tabs: [.episode, .trailers, .more],
                              movie: exampleMovie1,
                              showSeasonPicker: .constant(false),
                              selectedSeason: .constant(1) )
        }
        
    }
}
