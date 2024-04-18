import SwiftUI

class Quiz : ObservableObject {
    @Published var count : Int = 0
    @Published var questions: [Question] = [
        Question(question: "What breed of dog is my dog Bandit?", options: ["Pitbull", "Rottweiler", "Black Lab", "Golden retriever"], correctAnswer: "Pitbull"),
        Question(question: "What is my favorite sport?", options: ["Basketball", "Soccer", "Football", "Baseball"], correctAnswer: "Basketball"),
        Question(question: "What is 8 * 5?", options: ["35", "13", "40", "42"], correctAnswer: "40")
    ]
    
}


class Question : ObservableObject {
    @Published var question: String = ""
    @Published var options: [String] = ["soccer", "basketball"]
    @Published var correctAnswer: String = "soccer"
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
}



