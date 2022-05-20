import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                    
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        StandardHomeMovieView(movie: movie)
                            .frame(width: screen.width / 2)
                        MovieInfoSubHeadline(movie: movie)
                        
                        if movie.promotion != nil {
                            Text(movie.promotion!)
                                .font(.headline)
                                .bold()
                        } else {
                            Text("Play Now")
                                .font(.headline)
                                .bold()
                        }
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red, action: {
                            
                            
                        })
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                       
                    }
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            
            .foregroundColor(.white)
            
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: exampleMovie2)
    }
}

struct CastInfo: View {
    var movie: Movie
    var body: some View {
        
        VStack(spacing: 3) {
            
            HStack {
                
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                
                Text("Creators: \(movie.creators)")
                
                Spacer()
                
            }
            
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: Movie
    var body: some View {
        Group {
            
            HStack {
                
                Text(movie.episodeIndoDisplay)
                    .bold()
                
                Spacer()
                
            }
            
            .padding(.vertical, 4)
            
            HStack {
                
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                
                Spacer()
            }
        }
    }
}
