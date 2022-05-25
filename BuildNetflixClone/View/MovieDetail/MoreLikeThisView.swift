//
//  MoreLikeThisView.swift
//  BuildNetflixClone
//
//  Created by Alandis Seals on 5/21/22.
//

import SwiftUI

struct MoreLikeThisView: View {
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var movies: [Movie]
    
    
    var body: some View {
     
        LazyVGrid(columns: colums) {
            ForEach(0..<movies.count) { index in
                StandardHomeMovieView(movie: movies[index])
            }
        }
    }
}


struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: exampleMovies)
    }
}
