import SwiftUI

struct EpisodesView: View {
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({$0.season == season})
    }
    
    var episodes: [Episode]
    
    var body: some View {
        //Season picker
        VStack {
            HStack {
                
                Button(action:{
                    showSeasonPicker = true
                    
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
               
                
                
                Spacer()
            }
          
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                
                Text("Test")

            }
            
            Spacer()
        }
        .foregroundColor(.white)
     
        
        
        
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodesView(showSeasonPicker: .constant(false), selectedSeason: .constant(1), episodes: allExampleEpisodes)
        }
    }
}
