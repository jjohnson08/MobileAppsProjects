import SwiftUI

struct Q2View: View {
    
    @State var answer : Bool = false
    @State var result : String = ""
    @State var showAlert : Bool = false
    @Binding var count : Int 
    
    @State var quiz : Quiz = Quiz()
    
    var body: some View {
        VStack {
            Text("What is my favorite sport?")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.top, 40)
            
            Rectangle()
                .frame(height: 30)
                .padding(.bottom, 20)
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[2] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
            }, label:{
                
                Text("Football")
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            .font(.title)
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[0] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
            }, label: {
                Text("Basketball")
                    .font(.title)
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[1] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
            }, label: {
                Text("Soccer")
                    .font(.title)
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[3] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
            }, label: {
                Text("Baseball")
                    .font(.title)
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            
            
            
            
            Spacer()
            
        }
        .alert(isPresented: $showAlert) { if answer == true{
            Alert(title: Text("Correct"), message: Text("Next One"), dismissButton: .default(Text("Dismiss"), action: { 
                count += 1
            }))
        }
            else{
                Alert(title: Text("Try again!"), 
                      dismissButton: .default(Text("Dismiss")))
                
            }
            
        }
    }
}

#Preview {
    Q2View(answer: true, result: "p", showAlert: false, count: .constant(5))
}


