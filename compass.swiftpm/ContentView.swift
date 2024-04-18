import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            Image("Host")
                .resizable()
                .frame(width:350 , height:450)
                .clipShape(Ellipse())
                .opacity(0.5)
            
            VStack{
                
                HStack{
                    
                    Text("NW")
                        .font(.system(size: 20))
                        .padding(.horizontal , 38)
                        .padding(.top , 50)
                    
                    Text("N")
                        .font(.system(size: 50))
                    
                    Text("NE")
                        .font(.system(size: 20))
                        .padding(.horizontal , 41)
                        .padding(.top , 50)
                    
                }
                
                HStack{
                    
                    Image(systemName: "arrow.up.left")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .padding(.horizontal, 20)
                    
                    Image(systemName: "arrow.up")
                        .resizable()
                        .frame(width:30 , height: 50)
                    
                    Image(systemName: "arrow.up.right")
                        .resizable()
                        .frame(width: 30 , height: 30)
                        .padding(.horizontal , 20)
                    
                }
                
                HStack{
                    
                    Text("W")
                        .font(.system(size: 50))
                    
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 50, height: 30)
                    
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 50, height:50)
                    
                    Image(systemName: "arrow.right")
                        .resizable()
                        .frame(width: 50, height: 30)
                    
                    Text("E")
                        .font(.system(size: 50))
                    
                }
                .offset(x: -9)
                
                HStack{
                    
                    Image(systemName: "arrow.down.left")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal , 20)
                    
                    Image(systemName: "arrow.down")
                        .resizable()
                        .frame(width:30 , height:50 )
                    
                    Image(systemName: "arrow.down.right")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.horizontal , 20)
                    
                    
                }
                
                HStack{
                    
                    Text("SW")
                        .font(.system(size: 20))
                        .padding(.horizontal , 38)
                        .padding(.bottom , 30)
                    
                    Text("S")
                        .font(.system(size: 50))
                    
                    Text("SE")    
                        .font(.system(size: 20))
                        .padding(.horizontal , 41)
                        .padding(.bottom , 30)
                    
                    //            Image("Host")
                    //                .resizable()
                    //                .clipShape(Circle())
                }   
            }
        }
    }
}
