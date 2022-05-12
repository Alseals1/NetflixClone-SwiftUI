import SwiftUI

struct HomeView: View {
    var vm = HomeVM()
    var screen = UIScreen.main.bounds
    
    
    var body: some View {
        
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                
                // Main VStack
                LazyVStack {
                    
                    TopRowButton()
                        .zIndex(0)
                    
                    TopMoviePreview(movie: exampleMovie6)
                        .frame(width: screen.width)
                        .padding(.top, -100)
                        .zIndex(-1)
                    
                    ForEach(vm.allcatorgories, id: \.self) { category in
                        
                        VStack {
                            HStack {
                                
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                
                                Spacer()
                                
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                
                                LazyHStack{
                                    
                                    ForEach(vm.getMovives(forCategory: category)) { movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
            
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButton: View {
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
