import Foundation

//Задание 1.

func isNumberEven (number: Int) -> Bool{
    return number % 2 == 0
}

//Задание 2.

func isNumberDivisibleThree (number: Int) -> Bool{
    return number % 3 == 0
}

// Задание 3.

var myArray: [Int] = []

var a = 0

for _ in stride(from: 1, to: 101, by: 1) {
    myArray.append(a+1)
    a += 1
}

//Задание 4.

myArray.removeAll {isNumberEven(number: $0) || isNumberDivisibleThree(number: $0)}




