import UIKit
import Foundation
import Darwin
var greeting = "Hello, playground"
//Class
//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
class One {
    var var1:Int = 25
    var var2:String = "Jay"
}
var objOne = One()
print("Both Variables are \(objOne.var1) and \(objOne.var2)")

//Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.
class Two {
    var name: String
    var college: String
    var department: String
    init(name1: String,college: String) {
        self.name = name1
        self.college = college
        self.department = ""
    }
    init(name2: String,department: String) {
        self.name = name2
        self.department = department
        self.college = ""
    }
}
var objTwo = Two(name1: "Jay", college: "Gtu")
var objTwo1 = Two(name2: "Dhruv", department: "Mobile")
print("\(objTwo.name) and \(objTwo.college)")
print("\(objTwo1.name) and \(objTwo1.department) ")

//Create a swift class without initializers and access (write, read) its properties using instance of class.
class Three {
    var name3: String = "Jay"
    var college: String = "L.J"
    var place: String = "Amd"
}
var objThree = Three()
print(objThree.name3,objThree.college)
objThree.name3 = "Ram "
objThree.college = "L.J. Institute"
print(objThree.name3,objThree.college)

//Create a swift class which is having code to return square of given number and access this code using class instance.
class Square {
    var a: Int
    init(a: Int) {
        self.a = a
    }
    func doingsquare()-> Int {
        return a*a
    }
}
var square = Square(a: 10)
print(square.doingsquare())

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.
class Shapes {
    var Area: Int = 0
}
class Circle: Shapes {
    var radius: Int = 25
    func calculate()-> Int {
        Area = radius*radius
        return Area
    }
}
class Rectangle: Shapes {
    var length: Int = 2
    var breadth: Int = 5
    func calculate1()-> Int{
        Area = length * breadth
        return Area
    }
}
var rectangle = Rectangle()
var circle = Circle()
print("\(rectangle.calculate1())")
print("\(circle.calculate())")

//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.
class NewSquare: Square {
    override func doingsquare() -> Int {
        print("It will be Cube")
        return a*a*a
    }
}
var newsquare = NewSquare(a: 5)
print(newsquare.doingsquare())

//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
//example:  let instance = Example(value: 5)
//    let result = instance.doPower(power: 3)
////then it should return 5's 3 power (125)
class Example {
    var value: Double
    init(value: Double) {
        self.value = value
    }
    func doPower(power: Double)-> Double {
        let power1 = pow(value, power)
        return power1
    }
}
let instance = Example(value: 5)
let result = instance.doPower(power: 3)

//Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
class Vehicles {
    var speed1: Int = 25
    var speed : Int {
        return 150
    }
     func displayInfo() {
       print("Four wheeler or Two wheeler ")
    }
    func eat() {
        print("I am also eating")
    }
}
class Bike: Vehicles {
    override func displayInfo() {
        super.displayInfo()
        print("Bike ia a vehicle")
    }
    func drive()-> String {
    return"You are driving Bike"
    }
}
class Car: Vehicles {
    var carspeed: String = "High"
    override func displayInfo() {
        print("Car is a Vehicle")
    }
    func drive()-> String {
        return"You are driving a Car"
    }
}
var bike = Bike()
var car = Car()
bike.displayInfo()
car.displayInfo()
print("\(bike.drive())")
print("\(car.drive())")
car.speed

//Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//  Person1.greet() // This should print “Hello Joe”
class Person {
    var personname: String
    init(name: String) {
        self.personname = name
    }
    func greet() {
        print("Hello \(personname)")
    }
}
let person1 = Person(name: "Joe")
person1.greet()

//Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
//// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.
class Example1 {
    var a: String
    init(a: String) {
        self.a = a
    }
}
let example1 = Example1(a: "Helloooooo")
example1.a = "Hello"
let example2 = example1
example2.a = "Hii"
print(example1.a)
print(example2.a)

//Structure
//Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
struct Work {
    var WorkLocation: String
    var Workhours: Int
    var projectNames = Array<String>()
    func proNames()-> [String]{
        return projectNames
    }
}
let work = Work(WorkLocation: "Gandhinagar", Workhours: 8, projectNames: ["icoachu","iTrainu","iMonitoru","ihealthu"])
print("\(work.proNames())")

//Create a structure example which demonstrates use of initializer in structures.
struct newExample {
    var nameLocation: String
    var LoactionDistance: String
    var Time: Int
    init(name: String,Loc: String,time: Int) {
        self.nameLocation = name
        self.LoactionDistance = Loc
        self.Time = time
    }
}
let newexample = newExample(name: "Pune", Loc: "Near Mumbai", time: 12)
print("\(newexample.LoactionDistance)")

//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.
struct Item {
    var name4: String
    var cost: Int
    var quantity: Int
    var totalCost: Int = 0
    init(name: String,cost: Int,quantity: Int) {
        self.name4 = name
        self.cost = cost
        self.quantity = quantity
        self.totalCost = cost * quantity
    }
}
var item = Item(name: "Jay", cost: 5, quantity: 600)
print("\(item.totalCost)")

//Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//                 Odd numbers are: [1, 3, 5, 9, 7]
struct Arraybiffer {
    var input = Array<Int>()
    var evenNumbers = Array<Int>()
    var oddNumbers = Array<Int>()
    init(input: [Int]) {
        self.input = input
        for i in input {
            if i%2==0 {
                evenNumbers += [i]
            }else{
                oddNumbers += [i]
            }
        }
        print("Evennumbers are : \(evenNumbers)")
        print("OddNumbers are: \(oddNumbers)")
        }
}
var arraybiffer = Arraybiffer(input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])

//Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.
//// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
//Output be like: Name: Joe, Gender: Male, Age: 27
//      Name: Harry, Gender: Male, Age: 21
struct PersonDetails {
    var name: String
    var age: Int
    var gender: String
    init(Name: String,Gender: String,Age: Int) {
        self.name = Name
        self.age = Age
        self.gender = Gender
    }
}
var persondetails = PersonDetails(Name: "Joe",Gender: "Male",Age: 27)
var persondetails2 = PersonDetails(Name: "Harry",Gender: "Male", Age: 21)
var allDetails = Array<PersonDetails>()
allDetails.append(persondetails)
allDetails.append(persondetails2)
for element in allDetails {
    print("Name: \(element.name), Gender: \(element.gender), Age: \(element.age)")
}

//Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.

struct Example12 {
    var a: String
}
var example12 = Example12(a: "Helloooooo")
example12.a = "Hello"
var example21 = example12
example21.a = "Hii"
print(example12.a)
print(example21.a)

//Try to figure out basic difference between class and structures and give a demo for same.
//In class Variables should be intialised with init variable
//Structure should not be initialized with

//Enumerations
//
//Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.
//Example. It should return Monday or mon if I pass parameter 1 for get day name.
enum weekdays {
    case one,two,three,four,five,six,seven
    var value: (String,String) {
        switch self {
        case .one:
            return ("mon","Monday")
        case .two:
            return ("tue","Tuesday")
        case .three:
            return ("wed","Wednesday")
        case .four:
            return ("thrs","Thursday")
        case .five:
            return ("fri","Friday")
        case .six:
            return ("sat","Saturday")
        case .seven:
            return ("sun","Sunday")
        }
    }
}
print(weekdays.four.value)

//2) Create one enumeration program to return number of days in a month.
func numberOfDays(whichMonth: String)-> Int? {
    switch whichMonth {
    case "January","March","May","July","August","October","December":
        return 31
    case "April","June","September","November":
        return 30
    case "February":
        return 28|29
    default:
        print("Invalid Month")
        return nil
        }
}
print("\(numberOfDays(whichMonth: "Mayu") ?? 0)")

//3) Write a swift program using enumerations to demonstrate Int enums.
//5). Write a swift program for enum with raw values.
enum Fruits: Int{
case Apple = 1,Bananas,Grapes,Pineapple,Orange}
var fruits = Fruits.Grapes.rawValue
print("fruits is at \(fruits)")

//4) Write a swift program to demonstrate string type enum.
enum MoveDirection1: String {
    case forward = "You move forward"
    case backward = "You move to backward"
    case right = "You move to right"
    case left = "you move to left"
func printDirection1()-> String {
    return self.rawValue
    }
}
var action1 = MoveDirection1.right
print("\(action1.printDirection1())")

//6) Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).
 
enum Beverage: CaseIterable {
    case Coffee,Tea,MintWater,Juices
}
var bever = Beverage.allCases.map({ "\($0)" })
print(bever)

//7) Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).

enum Laptop {
    case price(Int)
    case name(String)
}
var brand = Laptop.name("Jay")
print(brand)
var offer = Laptop.price(8)
print(offer)

//8) Create an enum with its rawValues of type String and show usage of case to print value of case.
enum MoveDirection: String {
    case forward = "You move forward"
    case backward = "You move to backward"
    case right = "You move to right"
    case left = "you move to left"
func printDirection()-> String {
    return self.rawValue
    }
}
var action = MoveDirection.backward
print("\(action.printDirection())")

//Properties  Subscripts Methods & Inheritance
//1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
//Output: for example, your class Demo has one property of string type then you can be able to set it within a class. If I try set it outside of class it must give an error.
class Demo {
    private(set) var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var demo = Demo(name: "Jay", age: 21)
demo.age = 24
print("\(demo.name),\(demo.age)")

//2)  Create a swift program to demonstrate usage of computed properties using getter and setter.
struct LoanCalculator {
    var amount: Int
    var rate: Int
    var year: Int
    var simpleInterest: Int {
        get{
            return (amount*rate*year)/100
        }
        set(new) {
            amount = new + 1000
        }
    }
}
var loancalculator = LoanCalculator(amount: 250, rate: 5, year: 10)
print("\(loancalculator.simpleInterest)")
loancalculator.simpleInterest = 20
print(loancalculator.amount)

//3)  Create a swift program to show usage of stored properties.
struct storedProperties {
    var firstValue: Int
    let secondValue: String = "Jay"
}
var stdproperties = storedProperties(firstValue: 65)
print("\(stdproperties.firstValue)")

//4)  Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.
class Private1 {
    private var num: Int
    func doPrivate()-> String {
        print("It is a private func")
        return "Jay"
    }
    init(num: Int) {
        self.num = num
    }
}
var private1 = Private1(num: 25)
private1.doPrivate()
//5)  Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.
//Output: My class is Person and properties are id and name, then create an array of person. And print all elements of that array.
class PersonProperty {
    var name: String
    var id: Int
    init(name: String,id: Int) {
        self.name = name
        self.id = id
    }
}
var arrayPerson = Array<PersonProperty>()
var personproperty = PersonProperty(name: "Jay", id: 001)
var personproperty1 = PersonProperty(name: "Ram", id: 002)
arrayPerson.append(personproperty)
arrayPerson.append(personproperty1)
for element in arrayPerson{
    print("Name: \(element.name), ID: \(element.id)")}

//6)  Create one example of usage of willSet and didSet.
class StepsCounter {
    var totalSteps: Int = 0 {
        didSet{
            if totalSteps > oldValue {
                print("Added Some More Steps")
            }
        }
        willSet(newTotalSteps)
        {
            print("About To Set new totalSteps to \(newTotalSteps)")
        }
    }
}
let stepcounter = StepsCounter()
stepcounter.totalSteps = 200
stepcounter.totalSteps = 150

//7)  Create one lazy stored property in a class and show usage of it.
class sample {
    lazy var num1 = number()
}
class number {
    var name = "Swift"
}
var firstsample = sample()
print(firstsample.num1.name)

//8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.
class Person12 {
    var name: String
    var occupation: String
    init(name: String,occupation: String) {
        self.name = name
        self.occupation = occupation
    }
}
class Student: Person12 {
    var college: String
    init(name: String,occupation: String,college: String) {
        self.college = college
        super.init(name: name, occupation: occupation)
    }
}
class Employee: Person12 {
    var Company: String
    init(name: String,occupation: String,company: String) {
        self.Company = company
        super.init(name: name, occupation: occupation)
    }
}
var stud = Student(name: "Jay", occupation: "4th Year", college: "L.J")
var emp = Employee(name: "Jay", occupation: "Trainee", company: "Simform")
print("\(stud.occupation)")

//9)  Create one structure to show usage of mutating function in swift.
struct Mutating {
    var firstname: String
    var lastname: String
    var fullname: String
    mutating func makeAnonymous() {
        fullname = firstname + lastname
    }
}
var a = Mutating(firstname: "Jay", lastname: "Shah", fullname: "")
print("\(a.makeAnonymous())")
//var mutate = Mutating(name: "Ed")
//mutate.makeAnonymous()

//10)  Create one class inheritance demo to show usage of method overriding.
class Animal {
    var name: String = ""
    func eat() {
        print("I can eat")
    }
}
class Dog: Animal {
    func display() {
        print("My name is",name)
    }
    override func eat() {
        super.eat()
        print("I will also eat ")
    }
}
var labrador = Dog()
labrador.name = "Rohu"
labrador.eat()
labrador.display()

//11)  Create one swift class to show usage of type methods.
class Circle1 {
    static let PI = 3.14
    var radius: Double
    init(radius: Double) {
        self.radius = radius
    }
    func area() ->Double {
        return Circle1.PI * radius
    }
    static func printTypeName() {
        print("Circle is in Static Function")
    }
}
var circle1 = Circle1(radius: 5.0)
circle1.area()
Circle1.printTypeName()

//12)  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)
class Difference {
    var input: Int = 5
    static func newFunction()-> String {
        "Hello We are in Static Function "
    }
    class func newFunction1()-> String {
        "We are in Class Function"
    }
}
class NewDifference: Difference {
    override class func newFunction1() -> String {
        "NewDifference is sub-Class of Parent and Class Method is inherited"
    }
//    override static func newFunction()-> String{
//        "Static cannot be override"
//    }
}
var newdifference = NewDifference()
print("\(NewDifference.newFunction1())")
print("\(NewDifference.newFunction())")

//13)  Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.
//Output: WeekDays.subscript(day: 1) // will return Sunday Note: Handle invalid input.
class Arrayofweek {
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday","Thursday", "Friday", "saturday"]
         subscript(index: String) -> [String] {
             get {
                 let newArray = days.filter{$0.lowercased().contains(index.lowercased())}
                 return newArray
             }
    }
}
var p = Arrayofweek()
print(p["s"])

//14)  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.
class CharacterOne {
    var string: String
    init(str: String) {
        string = str
    }
    subscript(index:Int)-> Character {
        get{
            let newchar = string.index(string.startIndex, offsetBy: index)
            return string[newchar]
            }
    }
}
var char = CharacterOne(str: "May God Bless You")
print("\(char[5])")

//15)  Create one swift subscript program which takes range as input and returns the string between the ranges.
class Subscript {
    var string: String = "May God Bless You to the earliest"
    subscript(startindex: Int,endindex: Int)-> String {
        get{
            let range = string[string.index(string.startIndex, offsetBy: startindex)...string.index(string.endIndex, offsetBy: endindex)]
            return String(range)
        }
    }
}
var subscript1 = Subscript()
print("\(subscript1[1,-6])")

//16)  I have one integer array and create one function which takes range as input and returns all elements between the range.
class Arraynew {
    var intArray = Array<Int>()
    init(newArray:[Int]) {
        intArray = newArray
    }
    subscript(startindex: Int,endindex: Int)-> [Int]{
        get{
            let range = intArray[startindex...endindex]
            return Array(range)
        }
    }
}
var arraynew = Arraynew(newArray: [1,5,8,63,12,5,8,12,36])
print("\(arraynew[1,6])")

//17)  I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.
//Output: let array = [[1: “Hello”], [2: “Hi..”]]
//Now call function subscript(at: 1) it should print "Hello”
class KeyValueArray{
    var newArray:[(element: Int , str:String)]
    init(newArray:[(element: Int , str:String)]) {
        self.newArray = newArray
    }
    subscript(index: Int)-> String {
        get{
                let value = newArray.first{ $0.element == index}?.str ?? ""
                return value
            }
        }
}
var keyvaluearray = KeyValueArray(newArray: [(1, "Hello"), (2, "Hi..")])
print(keyvaluearray[1])
  
//18)  Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.
class TypePerson{
    var name: String
    var age: Int
    var birthdate: Int
    init(name : String,age: Int,birthdate: Int) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }
    subscript (input: String)-> (String,Int,Int) {
        get{
            if input == name {
                return (name,age,birthdate)
            }else{
                return ("No Name",0,0)
            }
        }
    }
}
var type = TypePerson(name: "Jay", age: 21, birthdate: 222)
var type2 = TypePerson(name: "JSim", age: 22, birthdate: 333)
var typeperson = Array<TypePerson>()
typeperson.append(type)
typeperson.append(type2)
print("\(type2["Jay"])")
//19)  Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer, composer
class Song {
    var newSong: String {
        return"New Song is there in base class"
    }
    func newSongFunction() {
        print(newSong)
    }
}
class HipHop: Song {
    var newHiphop: String = "This is Hip-Hop Song"
    override func newSongFunction() {
        print(newHiphop)
    }
}
class Classical: Song {
    var classiscal: String = "This is Classical Song"
    override func newSongFunction() {
        super.newSongFunction()
        print(classiscal)
    }
}
var hiphop = HipHop()
var classical = Classical()
hiphop.newSongFunction()
classical.newSongFunction()

//20)  Create a swift class with properties which can be read-write outside of class.
public class cricket {
    public var str: String = "I am Cricket fan"
    func printIt() {
        print("Welcome to cricket club")
    }
}
let cricketInst = cricket()
cricketInst.printIt()
cricketInst.str = "jay"
print("\(cricketInst.str)")
//Error Handling
// Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.
enum Passworderror: Error {
    case passwordshort
    case passwordempty
}
func passwordCheck(password: String)throws {
    if password.isEmpty {
        throw Passworderror.passwordempty
    }else if password.count < 8 {
        throw Passworderror.passwordshort
    }else {
        print("Your Password is :-\(password)")
    }
}
do {
    try passwordCheck(password: "jhgf")
    print("Valid Password")
}
catch Passworderror.passwordshort,Passworderror.passwordempty {
    print("Your Password is of shorter length")
}

// Create a program for shopping cart. If desired quantity for an item is not available, throw exception.
enum ShoppingCart: Error {
    case EmptyShoppingCart,Nodesiredquantity
}
func ShoppingCartItem(item: Int)throws {
    if item == 0 {
        print("No item left")
        throw ShoppingCart.EmptyShoppingCart
    }else if item > 10 {
        print("One minute Pls Check")
        throw ShoppingCart.Nodesiredquantity
    }else {
        print("Item is available in the store ")
    }
}
do {
    try ShoppingCartItem(item: 4)
}
catch ShoppingCart.Nodesiredquantity{
    print("Desired quantity of item is not there")
}
catch ShoppingCart.EmptyShoppingCart{
    print("There are 0 items in Shopping Cart")
}
//Extensions
//Create following string manipulation functions using string extensions:
//Add a character in a string at 5th position
//Replace one character with other in a string
//Remove white spaces from string
//Get number of words in a string
extension String {
    func addChar(myString: inout String,index: Int,char: Character){
            myString.insert(char, at: myString.index(myString.startIndex, offsetBy: index))
            print("\(myString)")
    }
    func replaceOneCharacter(myString: inout String,newChar: Character,oldChar: Character) {
        myString = myString.replacingOccurrences(of: String(oldChar), with: String(newChar))
    }
    func removeWhiteSpaces(myString: String)-> String {
        return myString.replacingOccurrences(of: "  ", with: "")
    }
    func numberOfWords(myString: String)-> Int {
        return myString.split(separator: " ").count
    }
}
var stringg = String()
var strNew = "        Hello        Simform      Solution"
var strr = "Jay"
stringg.addChar(myString: &strNew , index: 4, char: "*")
print("\(stringg.removeWhiteSpaces(myString: strNew))")
print(strNew)
print("\(stringg.numberOfWords(myString: strNew))")
print("\(strr.replaceOneCharacter(myString: &strr, newChar: "z", oldChar: "a"))")
print(strr)
