import SwiftUI

struct ContentView: View {
    
    @State var answer : Bool = false
    @State var result : String = ""
    @State var showAlert : Bool = false
    @State var count : Int = 0
    var myArray: Array<Int> = [1, 2, 3]
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .foregroundColor(.blue)
           HStack{
               if myArray[count] == 1{
                   Q1View(count: $count)
               } else if myArray[count] == 2{ 
                   Q2View(count: $count)
               } else if myArray[count] == 3 {
                   Q3View(count: $count)
               }
               
               
             
               
           }
        }
        .onAppear(perform: {
            print(myArray)
            print(count)
        })

    }
    
  
    }
    

