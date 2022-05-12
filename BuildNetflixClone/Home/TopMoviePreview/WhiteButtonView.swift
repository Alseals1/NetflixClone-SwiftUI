import SwiftUI

struct WhiteButtonView: View {
    var text: String
    var imageName: String
    
    
    
    
    var action:() -> Void
    
    
    
    var body: some View {
        Button(action: {}, label:{
            HStack{
                
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                Text(text).bold().font(.system(size: 17))
                
                Spacer()
            }
            .padding(.vertical, 6)
            .background(.white)
            .foregroundColor(.black)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            WhiteButtonView(text: "Play", imageName: "play"){
                //
            }
        }
    }
}
