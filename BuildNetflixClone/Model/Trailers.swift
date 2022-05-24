import Foundation


struct Trailers: Identifiable, Hashable {

    let id: String = UUID().uuidString
    
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
    
    
}
