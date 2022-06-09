import SwiftUI

struct SearchBarView: View {
    @State var text: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            Color.graySearchBackground
                .frame(width: 310, height: 36)
                .cornerRadius(8)
            
            HStack {
                
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.graySearchText)
                    .padding(.leading, 10)
                
           TextField("Search", text: $text)
                    .padding(7)
                    .padding(.leading, -7)
                .background(Color.graySearchBackground)
                .cornerRadius(8)
                .foregroundColor(.white)
                .padding(7)
                
                Button(action: {
                    // clear text
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.graySearchText)
                        .frame(width: 37, height: 37)
                    
                })
                .padding(.trailing, 18)
                
             
                Button(action: {
                    //clear text
                    //hide both button
                    //give up first responder
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing, 10)
               
            }
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SearchBarView()
                .padding()
        }
    }
}
