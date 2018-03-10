

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        let item = Question(text: "There is no hunger in a country as rich as the United States.", correctAnswer: false)
        list.append(item)
        list.append(Question(text: "Hunger is the world’s number one health risk; it kills more people every year than AIDS, malaria, and tuberculosis combined.", correctAnswer: true))
        list.append(Question(text: "Only homeless and jobless people need emergency food.", correctAnswer: false))
        list.append(Question(text: "Some 925 million people are malnourished in the world today. ", correctAnswer: true))
        list.append(Question(text: "One in seven people in the world will go to bed hungry tonight. ", correctAnswer: true))
        list.append(Question(text: "We can’t have a hunger problem and an obesity problem in the U.S. at the same time.", correctAnswer: false))
        list.append(Question(text: "Hunger is a problem for senior citizens.", correctAnswer: true))
        list.append(Question(text: "Government is taking care of the hunger problem.", correctAnswer: false))
        list.append(Question(text: "There is enough food to feed the world.", correctAnswer: true))
        list.append(Question(text: "Worldwide, 115 million children under the age of 5 are underweight", correctAnswer: true))
        list.append(Question(text: "Only droughts and other natural disasters are to blame for hunger.", correctAnswer: false))
        list.append(Question(text: "Hunger exists when food is available in shops and markets.", correctAnswer: true))
        list.append(Question(text: "Supplementation with vitamins can reduce risk of child mortality from all causes by 23 percent. ", correctAnswer: true))
         list.append(Question(text: "Hunger is one of the most pressing global issues.", correctAnswer: true))
         list.append(Question(text: "There is nothing you can do to help hungry people.", correctAnswer: false))
    }
}
