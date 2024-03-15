import UIKit

// 1. while ციკლის გამოყენებით, 1-დან 50-მდე დაბეჭდეთ ყველა კენტი რიცხვის ნამრავლი.

var mult = 1
var number = 1

while number <= 20 {
    if number % 2 != 0 {
        mult *= number
    }
    number += 1
}
print(mult)

// 2. შექმენით String ტიპის ცვლადი და ციკლის გამოყენებით შემოაბრუნეთ ის, მაგ: თუ გვაქვს “Test” უნდა მივიღოთ “tseT”

var originalString = "Test"
var reversedString = " "

for i in originalString {
    reversedString = String(i) + reversedString
}

print(reversedString)


//// 3. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."
//
//var currentLight = "🔴"
//while true {
//    switch currentLight {
//    case "🔴":
//        print("🔴->", terminator: "")
//        currentLight = "🌕"
//    case "🌕" :
//        print("🌕->", terminator: "")
//        currentLight = "🟢"
//        case "🟢" :
//        print("🟢->", terminator: "")
//        currentLight = "🔴"
//        default:
//    break
//    }
//}
print("\n")

// 4. Taylor Swift-ის კონცერტის ბილეთები იყიდება, თუმცა რაოდენობა ძალიან შეზღუდულია. While loop-ის მეშვეობით შექმენით ბილეთების გაყიდვის სიმულაცია და ყოველ გაყიდულ ბილეთზე დაბეჭდეთ “ბილეთი გაყიდულია, დარჩენილია მხოლოდ X რაოდენობა”, მანამ სანამ ბილეთების რაოდენობა მიაღწევს 0-ს, რის შემდეგაც ბეჭდავთ - “ყველა ბილეთი გაყიდულია გელოდებით კონცერტზე”

var tickets = 25

while tickets >= 1 {
    tickets -= 1
    print("ბილეთი გაყიდულია, დარჩენილია \(tickets)")
    if tickets == 0 {
        print("ყველა ბილეთი გაყიდულია")
    }
}

// 5. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: "array-ში ყველა ელემენტი განსხვავებულია" ან "array შეიცავს მსგავს ელემენტებს"  (array-ს ტიპს არაქვს მნიშვნელობა.)

var array = [1,1,2,3,4,5,6,7,8]
var similarElements = false

for (index, number) in array.enumerated() {
    let nextIndex = index + 1
    for nextNumber in nextIndex..<array.count {
        if number == array[nextNumber] {
            similarElements = true
            break
        }
    }
    if similarElements {
        break
    }
}

if similarElements {
    print("array შეიცავს მსგავს ელემენტებს")
} else {
    print("array არ შეიცავს მსგავს ელემენტებს")
}

// 6. დაწერეთ ქლოჟერი რომელიც გამოითვლის ორი რიცხვის სხვაობას და დააბრუნებს მიღებულ მნიშვნელობას.

let numbers: (Int, Int) -> Int = { (a, b) in
    abs(b - a)
}
let result = numbers(10,20)
print(result)

// 7. დაწერეთ ფუნქცია, რომელსაც გადააწვდით String ტიპის პარამეტრს. დაითვალეთ ამ პარამეტრში თანხმოვნების რაოდენობა და დაბეჭდეთ ის.

func countOfConsonant(name: String) -> Int {
    var counter = 0
    for alfabet in name {
        if alfabet != "ა" && alfabet != "ე" && alfabet != "ი" && alfabet != "ო" && alfabet != "უ" {
            counter += 1
        }
    }
    return counter
}

print(countOfConsonant(name: "ლოცვებს ვაძლიერებთ"))
