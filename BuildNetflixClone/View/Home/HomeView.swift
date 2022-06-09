import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    var screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenrees
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false 
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                
                // Main VStack
                LazyVStack {
                    
                    TopRowButtons(topRowSelection: $topRowSelection, selectedGenre: $homeGenre, showGenreSelection: $showGenreSelection, showTopRowSelection: $showTopRowSelection )
                        .zIndex(0)
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)
                    
                    HomeStack(vm: vm, topRowSelection: topRowSelection, selectedGenre: homeGenre, movieDetailToShow: $movieDetailToShow )
                }
            }
            if movieDetailToShow != nil {
                MovieDetailView(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn(duration: 0.10))
                    .transition(.opacity)
            }
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.90)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            }, label: {
                                if topRow == topRowSelection{
                                Text("\(topRow.rawValue)")
                                        .bold()
                                } else {
                                    Text("\(topRow.rawValue)")
                                        .foregroundColor(.gray)
                                }
                            })
                            
                        }
                        Spacer()
                        Button(action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(.bottom, 30)
                    }
                    
                }
                .font(.title)
                .edgesIgnoringSafeArea(.all)
                
            }
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.90)
                    
                    VStack(spacing: 40) {
                        Spacer()
                        ScrollView {
                            ForEach(vm.allGenre, id: \.self) { genre in
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }, label: {
                                    if genre == homeGenre{
                                        Text("\(genre.rawValue)")
                                            .bold()
                                    } else {
                                        Text("\(genre.rawValue)")
                                            .foregroundColor(.gray)
                                    }
                                })
                                .padding(.bottom, 40)
                                
                            }
                        }
                        
                        
                        Spacer()
                            
                        Button(action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.system(size: 40))
                        })
                        .padding(.bottom, 30)
                    }
                   
                }
                .font(.title)
                .edgesIgnoringSafeArea(.all)
            
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



enum HomeGenre: String {
    case AllGenrees
    case Action
    case Comedy
    case Horror
    case Thriller
}

