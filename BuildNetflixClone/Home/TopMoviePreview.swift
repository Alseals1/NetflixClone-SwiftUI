//
//  TopMoviePreview.swift
//  BuildNetflixClone
//
//  Created by Alandis Seals on 5/12/22.
//

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
                            Text(category)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 4))
                            }
                        }
                        
                    }
                }
                Text("Row of Buttons")
            }
            
        }
        .foregroundColor(.white)
        
        
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie6)
    }
}
