
import SwiftUI

enum CustomTabs: String {
    case episode = "EPISODES"
    case trailors = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher: View {
    
    @State private var currentTab: CustomTabs = .episode
    
    func widthForTab(_ tab: CustomTabs) -> CGFloat {
        let string = tab.rawValue
        return string.widthForString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    var tabs: [CustomTabs]
    var body: some View {
        
        VStack {
            // Custom tab picker
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            //buttons
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)

                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
        
                        
                    }
                }
            }
            Text("Selected View")
        }.foregroundColor(.white)
       
    }
}

struct CustonTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episode, .trailors, .more])
        }
        
    }
}
