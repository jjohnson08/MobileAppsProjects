import SwiftUI

struct ContentView: View {
    
    @State var num1 : Double?
    @State var num2 : Double?
    @State var myNum1: Double = 0
    @State var myNum2: Double = 0
    @State var answer: Double = 0
    
    var body: some View {
        VStack {
            if answer != 0 && answer != 64{
                
                
                if (answer).truncatingRemainder(dividingBy: 2) == 1{
                    Image("Jacob")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .top)
                }
                else{
                    Image("Lam")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .top)
                }
                
            } 
            else if answer == 64{
                Image("Donkey kong")
                    .resizable()
                    .frame(width: 150, height: 150, alignment: .top)
            }
            
            
            TextField("Enter a number", value: $num1, format: .number)
                .textFieldStyle(.roundedBorder)
            
            TextField("Enter a number", value: $num2, format: .number)
                .textFieldStyle(.roundedBorder)
            
           
         
            
            Slider(value: $myNum1, in: 0...10) { success in
                num1 = myNum1
            }
            
            Slider(value: $myNum2, in: 0...10) { success in
                num2 = myNum2
            }
        
            HStack{
                Button(action: {
                    myNum1 = num1 ?? 0
                    myNum2 = num2 ?? 0
                    answer = myNum1 + myNum2
                }, label: {
                    Image(systemName: "plus.app")  
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                
                Button(action: {
                    myNum1 = num1 ?? 0
                    myNum2 = num2 ?? 0
                    answer = myNum1 - myNum2
                }, label: {
                    Image(systemName: "minus.square")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
                
                Button(action: {
                    myNum1 = num1 ?? 0
                    myNum2 = num2 ?? 0
                    answer = myNum1 * myNum2
                }, label: {
                    Image(systemName: "multiply.square")
                        .resizable()
                        .frame(width:50, height: 50)
                    
                })
                
                Button(action: {
                    myNum1 = num1 ?? 0
                    myNum2 = num2 ?? 0
                    answer = myNum1 / myNum2
                }, label: {
                    Image(systemName: "divide.square")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
            }
            Button(action: {
                num1 = nil
                num2 = nil
                myNum1 = 0
                myNum2 = 0
                answer = 0
            }, label: {
                Text("Reset")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: 200, height: 100, alignment: .center)
                    .background(Color.red)
                    .clipShape(Capsule())
            })
            
            Text("The result is: \(answer)")
        }
    }
}
