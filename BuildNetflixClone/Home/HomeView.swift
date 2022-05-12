import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    var screen = UIScreen.main.bounds
    
    
    var body: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                
                // Main VStack
                LazyVStack {
                    
                    TopMoviePreview(movie: exampleMovie9)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                    
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
                                    
                                    ForEach(vm.getMovives(forCategory: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
