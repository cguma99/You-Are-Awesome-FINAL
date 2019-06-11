import UIKit

var str = "Hello, playground"
print(str)
str = "Hello, Developer"
print(str)
let messages = ["You Are Awesome", "You Are Great", "You Are Fantastic", "When the genius bar needs help, they call you", "You brighten my day", "You make me smile"]

print(messages[2])
messages.count



var diceroll = int.random(in: 1...6)
var numberrolls=1
print("It took you", numberrolls, "to roll a 6")
var quizzes = [72,81,89,95,92]
var sum = 0
for index in 0... quizzes.count - 1 {
    sum = sum + quizzes(index)
}
