//
//  MovieInfoSubHeadline.swift
//  BuildNetflixClone
//
//  Created by Alandis Seals on 5/18/22.
//

import SwiftUI

struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill").foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct MovieInfoSubHeadline_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            MovieInfoSubHeadline(movie: exampleMovie4)

            
        }
    }
}

struct RatingView: View {
    var rating: String
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
