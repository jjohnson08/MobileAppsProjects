import SwiftUI

struct Q3View: View {
    
    @State var answer : Bool = false
    @State var result : String = ""
    @State var showAlert : Bool = false
    @Binding var count : Int
    
    @State var quiz : Quiz = Quiz()
    
    var body: some View {
        VStack {
            Text("\(quiz.questions[count].question)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(.top, 40)
            
            Rectangle()
                .frame(height: 30)
                .padding(.bottom, 20)
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[0] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
                
            }, label:{
                
                Text("35")
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            .font(.title)
            
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
                Text("13")
                    .font(.title)
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            
            
            Button(action: {
                let question = quiz.questions[count]
                if question.options[2] == question.correctAnswer {
                    answer = true 
                    showAlert = true
                } else {
                    answer = false
                    showAlert = true
                }
            }, label: {
                Text("40")
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
                Text("42")
                    .font(.title)
                    .frame(width: 300,height: 50 ) 
                    .background(Color .white) 
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            })
            
            
            
            
            Spacer()
            
        }
        .alert(isPresented: $showAlert) { if answer == true{
            Alert(title: Text("Correct"), message: Text("Reset quiz"), dismissButton: .default(Text("Dismiss"), action: { 
                count = 0
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
    Q3View(answer: true, result: "p", showAlert: false, count: .constant(5))
}


