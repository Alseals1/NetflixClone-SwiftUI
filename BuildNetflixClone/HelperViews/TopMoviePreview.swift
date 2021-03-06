import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    var vm = HomeVM()
    func isCategoryLast(_ category: String) -> Bool {
        let catCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: category) {
            if index + 1 != catCount {
                return  false
            }
        }
        return true
    }
    
    var body: some View {
        
        // Outter zstack
        ZStack {
            KFImage(movie.thumbnail)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category).font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 4))
                            }
                        }
                        
                    }
                }
                HStack{
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        //actions
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill") {
                        // Action
                    }.frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        //
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .background(LinearGradient.blackOpacityGradient
                .padding(.top, 20))
           
            
        }
        .foregroundColor(.white)
        
        
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie6)
    }
}
