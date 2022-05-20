//
//  MovieDetailView.swift
//  BuildNetflixClone
//
//  Created by Alandis Seals on 5/18/22.
//

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
                            //
                            
                        })
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
