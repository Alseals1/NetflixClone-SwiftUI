//
//  TopRowButtons.swift
//  BuildNetflixClone
//
//  Created by Alandis Seals on 5/12/22.
//

import SwiftUI

struct TopRowButtons: View {
    var body: some View {
        HStack {
            
            Button(action:{},
                   label: {
                Image("netflix_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            .buttonStyle(.plain)
            
            Spacer()
            
            Button(action:{},
                   label: {
                Text("TV Shows")
            })
            .buttonStyle(.plain)
            
            
            
            Spacer()
            
            Button(action:{},
                   label: {
                Text("Movies")
            })
            .buttonStyle(.plain)
            
            Spacer()
            
            Button(action:{},
                   label: {
                Text("My List")
            })
            .buttonStyle(.plain)
        }.padding(.leading, 10)
            .padding(.trailing, 30)
    }
}


struct TopRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopRowButtons()
    }
}
