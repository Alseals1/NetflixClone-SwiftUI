import Foundation
import SwiftUI

struct HomeStack: View {
    var vm: HomeVM
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allcatorgories, id: \.self) { category in
            
            VStack {
                HStack {
                    
                    Text(category)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    LazyHStack{
                        
                        ForEach(vm.getMovives(forCategory: category, andHomeRow: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovieView(movie: movie)
                                .frame(width: 100, height: 200)
                                .padding(.horizontal, 20)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
            
        }
    }
}


struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeVM(), topRowSelection: .movies, selectedGenre: .AllGenrees, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
        
    }
}
