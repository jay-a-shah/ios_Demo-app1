import UIKit
import CoreGraphics

//Print Hello World in swift Play Ground

print("Hello World")

//Variables
//Create variables of different types and print it

var anInteger:Int = 50
var anFloat:Float = 52.0
var anDouble = 20.0
var anString:String = "Tom"
var anBool:Bool = true
print(anInteger,anFloat,anDouble,anBool,anString)

//Create one integer and perform addition with 5 to that and print values

var anInteger1:Int = 50
anInteger1 = anInteger1 + 5
print("\(anInteger1)")
//There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration

let rate = 0.15
var amount = 100
var duration = 160
print("Calculated Interest is \((rate * Double(amount) * Double(duration))/100)")
var a1:String? = nil
print("\(a1 ?? "Hello Vishal")")
//Operator:

//Create example for String concate using operators

var str = "Jay"
var str1 = " Shah"
print("Cocatenated String is \(str + str1)")

//Create one example for show usage of operator's addition, multiplication, division for integers and floats
var float = 5.5
print("Addition among Integers \(amount+duration)")
print("Multiplication among Integers \(amount * duration)")
print("Division among Integers \(amount / duration)")
print("Addition among Float \(rate + float)")
print("Multiplication among Float \(rate * float)")
print("Multiplication among Float \(rate / float)")

//What is turnery operator and show example of usage?
var h = 40
let new = true
new ? (h = 15) : nil
print("Ternary Operator's value is \(h)")

//Strings & Characters
//Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.3
//
//Input: “Simform”
//
//Output: “Si”

var str2 = "Simform"
if str2.count > 2 {
let str3 = str2.prefix(2)
print("\(str3)")
}else{
     let str3 = str2.prefix(2)
    print("Shorter String is \(str3)")
    
}
 //Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.

//Input: “Simform”

//Output: imfor
var str3 = "Simform"
var nert = str3.index(str3.startIndex,offsetBy: 1)
var end = str3.index(str3.endIndex,offsetBy: -2)
let range = String(str3[nert...end])

print("\(range)")

//Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
//Input: "Swift", "Examples"
//
//Output: wiftxamples
var str4 = "Swift"
var str5 = "Examples"
if str4.count > 1 && str5.count > 1{
    _ = str4.removeFirst()
    _ = str5.removeFirst()
    print("Merged Strings are \(str4 + str5)")
}else{
    print("merged Strings are \(str4 + str5)")
}

//Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
//Output: iftSw

var str6 = "Swift"
var neww = str6.dropLast(3)
if str6.count>2{
    print("\(str6.dropFirst(2) + neww)")
}else{
    print("Short String is \(str6)")
}

//Write a Swift program to test if a given string starts with "Sw".
//Input: Swift
//Output: true
var text = "Swift"

print("Output : \(text.hasPrefix("Sw") ? true :false)")

//Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
//Input: “Simform Solutions”, 3
//Output: Simons

func firstnLastChar(input:String,n:Int){
    if input.count > n{
    
    let text1 = input.prefix(n)
    let text2 = input.suffix(n)
     print("\(text1 + text2)")
 }else{
        print("Shorter String is \(input)")
    }
   
}
firstnLastChar(input: "Simform Solutions", n: 3)

//Array

//Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
//Input: [1,2,3,1]
//Output: true

var arr = [1,2,3,1]
if arr.count > 0{
print("\(arr.first == arr.last ? true : false)")
}else{
    print("\(arr)")
}

//Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
//Input: [1,2,3,4]
//Output: [0,0,0,0,0,0,0,4]

var arr1 = [1,2,3,4]
if arr1.count>0{
    var newArr = Array(repeating: 0, count: (arr1.count * 2)-1)
    newArr.append(arr1[3])
    print("New Array is \(newArr) ")
}else{
    print("\(arr1)")
}

//Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
//Input: [0,1,2,3]
//Output: [0,1]

var arr2 = [0,1,2,3]
if arr2.count > 1{
    let newarray = arr2.prefix(2)
    print("First Two Elements are \(newarray)")
}else{
    print("There are not at least 2 elemetsin array \(arr2)")
}

//Write a Swift program to take one array and find out maximum number from that array
//Input: [0,50,100,20,80,150]
//Output: 150
 var arr3 = [0,50,100,20,80,150]
print("Maximum number in the elements are \(arr3.max() ?? 0)") //Doubt

//Write a Swift program to take one array and sort it in descending order.
//Input: [0,5,6,2,10]
//Output: [10,6,5,2,0]

var arr4 = [0,5,6,2,10]
print("Descending Order of this array is \(arr4.sorted(by: >))")

//Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
//Input: var listOfNumbers = [1, 2, 3, 10, 100]
//var divisors = [2, 5]
//Output: 2,10,100

var listOfNumbers = [1, 2, 3, 10, 100]
var divisors = [2, 5]
for i in listOfNumbers{
    for j in divisors{
        if i%j == 0{
            var newarr:Array = [i]
            print("\(newarr)")
        }
}
}
//Dictionaries

//You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
var code = [
"a" : "b",
"b" : "c",
"c" : "d",
"d" : "e",
"e" : "f",
"f" : "g",
"g" : "h",
"h" : "i",
"i" : "j",
"j" : "k",
"k" : "l",
"l" : "m",
"m" : "n",
"n" : "o",
"o" : "p",
"p" : "q",
"q" : "r",
"r" : "s",
"s" : "t",
"t" : "u",
"u" : "v",
"v" : "w",
"w" : "x",
"x" : "y",
"y" : "z",
"z" : "a"]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
for character in encodedMessage{
    for (key,value) in code{
        if value == String(character){
            print(key,terminator: "")
        }
        }
    }

//2) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
var people: [[String:String]] = [
[
"firstName": "Calvin",
"lastName": "Newton"
],
[
"firstName": "Garry",
"lastName": "Mckenzie"
],
[
"firstName": "Leah",
"lastName": "Rivera"
],
[
"firstName": "Sonja",
"lastName": "Moreno"
],
[
"firstName": "Noel",
"lastName": "Bowen"
]
]
var firstNames = people.map {$0["firstName"] ?? ""}
print(firstNames)

//3) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space.

var people2: [[String:String]] = [
[
"firstName": "Calvin",
"lastName": "Newton"
],
[
"firstName": "Garry",
"lastName": "Mckenzie"
],
[
"firstName": "Leah",
"lastName": "Rivera"
],
[
"firstName": "Sonja",
"lastName": "Moreno"
],
[
"firstName": "Noel",
"lastName": "Bowen"
]
]
//var fullName = people2.map{ ($0.0 ?? "nil") + " " + ($0.1 ?? "nil") }
var firstNames1 = people.map {$0["firstName"] ?? ""}
print(firstNames1)
var lastNames2 = people2.map{$0["lastName"] ?? ""}
print(lastNames2)
var fullName = zip(firstNames1, lastNames2).map{($0.0 ?? "nil") + " " + ($0.1 ?? "nil")}
print(fullName)

//4) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.

var people4: [[String:Any]] = [
[
"firstName": "Calvin",
"lastName": "Newton",
"score": 13
],
[
"firstName": "Garry",
"lastName": "Mckenzie",
"score": 12
],
[
"firstName": "Leah",
"lastName": "Rivera",
"score": 10
],
[
"firstName": "Sonja",
"lastName": "Moreno",
"score": 3
],
[
"firstName": "Noel",
"lastName": "Bowen",
"score": 16
]
]

var score = people4.map{($0["score"]) ?? ""}
var minimumPeople = people4.min { a, b in
    (a["score"] as? Int ?? 0) < (b["score"] as? Int ?? 0)
}
print(minimumPeople ?? "")



//5) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:
var people5: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 23

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]

var sorted = people5.sorted{ a,b in
    (a["score"] as? Int ?? 0) > (b["score"] as? Int ?? 0)
}
print(sorted)
var score12 = sorted.map{$0["score"] ?? ""}
print(score12)
for (firstName1,(lastName2,score123)) in zip(firstNames1,zip(lastNames2,score12)){
    print("\(firstName1)\(lastName2) - \(score123)")
}
    
//6) You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var freqDict = [Int:Int]()
for number in numbers {
    freqDict[number] = (freqDict[number] ?? 0) + 1
}
print(freqDict)
var sortedDict = freqDict.sorted(by: <)
for (key,value) in sortedDict{
    print("\(key) \(value)")
}

//Control Flow Part

//Print the powers of 2 that are less than or equal to N.
 var N = 100
var counter1 = 2
while counter1<=100{
    let counter:Array = [counter1]
    print(counter)
    counter1 *= 2
}

//Given an integer N draw a square of N x N asterisks. Look at the examples.
for _ in stride(from: 0, to: 3, by: 1){
    for _ in stride(from: 0, to: 3, by: 1){
        print("*",terminator: "")
    }
print("")
}

//Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
for i in stride(from: 5, to: 0, by: -1){
    for _ in stride(from: 5, to: i-1, by: -1){
        print("*",terminator: "")
    }
    print("")
}
//Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.
var n = 5
for i in stride(from: 1, to: n, by: 1){
    for k in stride (from: n-i, to: 0 , by: -1){
       
    }
    for j in stride (from: 0, to: i*2-1 , by: 1){
       print("*",terminator: "")
    }
    print("")
}

//5)You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
func FindPrime(num: Int) -> Bool {
//    guard num >= 2 else { return false }

    for i in 2 ..< num {
        if num % i == 0 {
            return false
        }
    }
return true
}
print(FindPrime(num: 19))

//Optionals:
//
//Create an example of demonstrating How to declare optionals in swift?
var optional:String? = "Jay "

//What is force unwrapping in optionals show usage in example.

print(optional!.count)
//Create one example of show usage of optional binding

var someInt:Int?
var anotherInt:Int? = 0
if someInt != nil{
    print("It has some value")
}else{
    print("It does not contain anything")
}

//Create one example using if-let

var optionalNumber : Int?
//optionalNumber = 26
if let number = optionalNumber{
    print("I have a number \(number)")
}else{
    print("I Don't have Number")
}
//Create one example using guard-let

optionalNumber = 25
func tripleNumber(number :Int?){
    guard let num = number else {
        print("Exiting from the Function")
        return
    }
    print("My triple Number \(num*3)")
    
    }
tripleNumber(number: optionalNumber)

//Create one example using nil colloison operator

var someInt1:Int?
var defaultvalue = 5
var newValue = someInt1 ?? defaultvalue
print(newValue)

//1. Breakfast
//
//You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
//Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
//If you can cook bacon and eggs print you can cook bacon and eggs.
//If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.

var baconAge = 3
var eggsAge = 2

if baconAge < 21 && eggsAge < 7{
    print("you can cook bacon and eggs")
}else if baconAge > 21 && eggsAge < 7 {
    print("throw out bacon")
}else if baconAge < 21 && eggsAge > 7 {
    print("throw out eggs")
}else{
    print("Throw both the items")
}

//2. Leap Year
//
//You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
//The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.

var year = 1900
if year % 100 == 0 && year % 400 == 0{
    print("Leap Year!")
}else{
    print("Not a Leap Year!")
}

//3. Hitpoints
//
//You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
// 100 represents full health
// 0 represents dead.
//You want to add regenerating health to the game using the following rules:
//
//HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)
//
//When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)
//
//If the character has 0 HP then he doesn’t regenerate life (he’s dead)
//
//Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.

var hp = 60
switch hp {
    case 75:
        hp = 80
    case 32:
        hp = 40
case _ where hp < 20 :
    hp = 20
case 0 :
    print("he is dead")
default:
   print(hp)
}

//4. Above average
//
//You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
//You are also given your grade in the class stored in a variable yourGrade of type Double.
//Print above average if your grade is greater than the class average or below average” otherwise.
// Note: the average of the class includes your grade.

var grade1 = 7.0
var grade2 = 9.0
var grade3 = 5.0
var yourGrade = 8.0
var average = (grade1+grade2+grade3+yourGrade)/3.0
print(average)
if average > yourGrade{
    print("above average")
}else{
    print("below average")
}

//5. Tipping
//
//You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
//You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
//Print the total cost of the meal.

var mealCost:Double = 3.5
var tip:Int = 20
var totalCost = mealCost + mealCost * (Double(tip)/100)
print(totalCost)
