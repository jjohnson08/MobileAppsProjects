import SwiftUI

struct ContentView: View {
    
    @State var Q1grade : Double?
    @State var Q2grade : Double?
    @State var desiredGrade : Double?
    @State var examGrade : Double = 0.0
    @State var color : Color = .gray
    @State var exCred : String = ""
    @State var showAlert : Bool = false
    var letGrades = ["A", "B", "C", "D", "F"]
    
    @State var Q1letGrade : String = ""
    @State var Q2letGrade : String = ""
    @State var desiredLetGrade : String = ""
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(color)
            VStack {
                HStack{
                    Text("Q1 grade:")
                    TextField("Enter your Q1 grade", value: $Q1grade, format: .number)
                        .textFieldStyle(.roundedBorder)
                    
                    Picker("Letter Grade", selection: $Q1letGrade){
                        ForEach(letGrades, id: \.self){
                            Text("\($0)")
                        }
                    }
                    .onChange(of: Q1letGrade, { 
                        gradeConverter()
                    }) 
                }
                
                
                .font(.title)
                
                HStack{
                    
                    Text("Q2 grade: ")
                    TextField("Enter your Q2 grade", value: $Q2grade, format: .number)
                        .textFieldStyle(.roundedBorder)
                    
                    Picker("Letter Grade", selection: $Q2letGrade){
                        ForEach(letGrades, id: \.self){
                            Text($0)
                        }
                    }
                    .onChange(of: Q2letGrade, { 
                        gradeConverter1()
                    }) 
                }
                .font(.title)
                
                HStack{
                    
                    Text("Desired grade: ")
                    TextField("Enter your desired grade", value: $desiredGrade, format: .number)
                        .textFieldStyle(.roundedBorder)
                    
                    Picker("Letter Grade", selection: $desiredLetGrade){
                        ForEach(letGrades, id: \.self){
                            Text($0)
                        }
                    }
                    .onChange(of: desiredLetGrade, { 
                        gradeConverter2()
                    }) 
                }
                .font(.title)
                Button(action: {
                    calculate()
                    if examGrade > 100{
                        color = .red   
                    } else {
                        color = .green
                    }
                    
                    if color == .red {
                        exCred = "You need extra credit!"
                        showAlert = true
                    }
                }, label: {
                    Text("Calculate Final Grade")
                        .frame(width: 340, height : 80)
                        .background(Color.blue)
                        .clipShape(Capsule())
                })
                .font(.largeTitle)
                .alert("You need extra credit!", isPresented: $showAlert){Button( "OK", role: .cancel){}
                    
                }
                
                
                
                Text("Necessary exam grade: \(examGrade, specifier: "%.2f")")
                
                
            }
        }
    }
    
    
    
    func calculate() -> Double{
        //        guard let q1 = Q1grade else {return}
        
        if let q1 = Q1grade, let q2 = Q2grade, let dG = desiredGrade {
            let a = q1 * 0.4
            let b = q2 * 0.4
            let c = dG
            
            examGrade = 5*(c-(a+b))
        }
        return examGrade
        
    }
    
    func gradeConverter() -> Double{
        if Q1letGrade == "A" {
            Q1grade = 95
        } else if Q1letGrade == "B" {
            Q1grade = 85
        } else if Q1letGrade == "C" {
            Q1grade = 75
        } else if Q1letGrade == "D" {
            Q1grade = 65
        } else {
            Q1grade = 50
        }
        return Q1grade ?? 0
    }
    func gradeConverter1() -> Double {
        if Q2letGrade == "A" {
            Q2grade = 95
        } else if Q2letGrade == "B" {
            Q2grade = 85
        } else if Q2letGrade == "C" {
            Q2grade = 75
        } else if Q2letGrade == "D" {
            Q2grade = 65
        } else {
            Q2grade = 50
        }
        return Q2grade ?? 0
    }
    func gradeConverter2() -> Double {
        if desiredLetGrade == "A" {
            desiredGrade = 95
        } else if desiredLetGrade == "B" {
            desiredGrade = 85
        } else if desiredLetGrade == "C" {
            desiredGrade = 75
        } else if desiredLetGrade == "D" {
            desiredGrade = 65
        } else {
            desiredGrade = 50
        }
        return desiredGrade ?? 0
    }
}

