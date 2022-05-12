
import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnail)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovie1)
    }
}
