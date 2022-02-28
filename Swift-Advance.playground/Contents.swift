import UIKit


var array = ["Jay Shah"]
if array.isEmpty {
    print("empty")
}else{
    print("Not empty")
}
array.append("Jay Buddhdev")
array.insert("Vishal", at: 0)

array.filter ({ return pref
})
var nn = [1,2,25,6,36,89,66,3]
nn = nn.filter({$0 % 2 == 0})
print(nn)
var array12 = nn.map({ $0 * 2 })
print(array12)


var greeting = "Hello, playground"
 // Function

func student(name : String)->String {
    return name
}
print(student(name: "Jay Shah"))
print(student(name: "Simform Solutions"))

func display(no1: Int) -> Int {
   let a = no1
   return a
}

print(display(no1: 100))
print(display(no1: 200))

func mult(no1:Int,no2 : Int)->Int {
    return no1 * no2
}
print(mult(no1: 2, no2: 25))

func votersname()-> String {
    return "Jay"
}
print(votersname())

func ls(array : [Int])-> (large : Int, small : Int)? {
    if array.isEmpty {return nil}
    var lar = array[0]
    var sma = array[0]
    
    for i in array[1..<array.count] {
        if i < sma {
            sma = i
        }else if i > lar {
            lar = i
            }
    }
    return(lar,sma)
}
let num = ls(array: [2,5,7])
print("Largest number is \(num) Smallest Number is \(num)")

//external Parameternames
func pow(firstArg a: Int,secondArg b : Int)->Int {
    var res = a
       for _ in 1..<b {
          res = res * a
       }
       print(res)
       return res
    }

    pow(firstArg:5, secondArg:4)
//Variaidc Parameter
func vari<N>(members: N...) {
    for i in members {
        print(i)
    }
}
vari(members: 5,4,6,9)
//Function Type
func sum(a:Int , b:Int)-> Int {
    return a+b
}
var addition: (Int,Int)-> Int = sum
print("\(addition(40,4))")
//Closure

let studname = {print("Welcome to swift closure")}
studname()
//KnownType Closure
let divide = {
    (val1: Int,val2: Int)-> Int in
    return val1/val2
}
let num1 = divide(200,2000)
print(num1)
var count:[Int] = [5,10,6,-2,3]
let descending = count.sorted(by: {n1,n2 in n1 > n2})
let ascending = count.sorted(by: {n1,n2 in n1 < n2})
print(descending)
print(ascending)
//
func ascend(s1:String,s2:String)-> Bool {
    return s1 > s2
}
print("\(ascend(s1: "Jay", s2: "Ahah"))")

func display(greet: @autoclosure ()-> ()) {
    greet()
}
display(greet: print("Hello World"))

//Enumeration
enum Color: String {
    case black
    case silver
    case red
    case blue
    case white
}
let fill = Color.blue


enum Season {
    case spring, summer, autumn, winter
}
var currentSeason = Season.winter
print("Current Season:", currentSeason)

enum Laptop{
    case price(Int)
    case name(String)
}
var brand = Laptop.name("Jay")
print(brand)
var offer = Laptop.price(8)
print(offer)
enum Bever : CaseIterable{
    case coffee,tea,juices
}
let numberOfChoice = Bever.allCases.count
print(numberOfChoice)

for berverage in Bever.allCases {
    print(berverage)
}


class studentMarks {
   var mark1 = 300
   var mark2 = 400
   var mark3 = 900
}

let marks = studentMarks()
print("Mark1 is \(marks.mark1)")
print("Mark2 is \(marks.mark2)")
print("Mark3 is \(marks.mark3)")
//refrence Type
class Bike{
    var name: String
    var gear: Int
    
    init(name:String,gear:Int) {
        self.name = name
        self.gear = gear
    }
}
var bike1 = Bike(name: "BMX Bike", gear: 7)
print("Bike Model:- \(bike1.name) Gear:- \(bike1.gear)")
var bike2 = bike1
print(bike2.name)
bike1.name = "Mountain Bike"
print(bike2.name)
 
struct BikeNew {
  var color: String

  init(color:String) {
    self.color = color
  }
}

var bike3 = BikeNew(color: "Blue")

var bike4 = bike3

bike4.color = "Red"
print(bike3.color)  // prints blue

//Lazy Stored Properties

class sample{
    lazy var no = number()
}
class number{
    var name = "Swift"
}
var firstsample = sample()
print(firstsample.no.name)

//Computed Properties

class newSample {
   var no1 = 0.0, no2 = 0.0
   var length = 300.0, breadth = 150.0
    var middle: (Double,Double){
        get{
            return(length/2,breadth/2)
        }
    }
}
var rresult = newSample()
print(rresult.middle)

//Methods

class division {
    var count: Int = 0
    func incrementBy(num1:Int,num2:Int) {
         count = num1/num2
        print(count)
    }
}
let counter = division()
counter.incrementBy(num1: 1800, num2: 3)
counter.incrementBy(num1: 1600, num2: 4)

//Subscript
struct subexample {
    let decrementer:Int
    subscript(index:Int)-> Int {
        return decrementer/index
    }
}
let divi = subexample(decrementer: 100)
print("\(divi[5])")

class daysofaweek {
   var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
      "Thursday", "Friday", "Saturday"]
   subscript(index: Int) -> String {
      get {
         return days[index]
      }
      set(newValue) {
         self.days[index] = newValue
      }
   }
}
var p = daysofaweek()
//Collection
let EuropianCountries = ["France","Italy","Europe"]
for country in EuropianCountries{
    print("----\(country)")
}

struct cube {
   var length: Double
   var breadth: Double
   var height: Double
   init() {
      length = 6
      breadth = 12
      height = 4
   }
}
var volume = cube()
print("volume of cube is \(volume.length*volume.breadth*volume.height)")

//Parameterized Initializer
class Wall {
    var length : Double
    var height: Double
    init(legth:Double,height1:Double) {
        
        length = legth
        height = height1
    }
    func calculateArea()-> Double{
        length = height
        return length*height
    }
}
var wall = Wall(legth: 25.0,height1: 5.0)
var wall1 = Wall(legth: 15, height1: 5)

print("Calculated Area of wall is \(wall.calculateArea())")
print("Calculated Area of wall1 is \(wall1.calculateArea())")

struct Item {
    var name: String
    var cost: Int
    var totalQuantity: Int
    //user Defined init method
    init(name: String,cost: Int) {
        self.name = name
        self.cost = cost

        self.totalQuantity = cost*4
    }
}
var item = Item(name: "Iphone", cost: 25)
print("\(item.totalQuantity)")

class Item1 {
    var name1: String
    var cost1:Int
    var price: Int
    var totalquantity: Int
    init(name1: String,cost1: Int,price: Int) {
        self.name1 = name1
        self.cost1 = cost1
        self.price = price
        self.totalquantity = cost1*price
    }
}
var objitem = Item1(name1: "Iphone 13", cost1: 102000, price: 2)
print("\(objitem.totalquantity)")


//Failable Initializer
struct file {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty{
            print("folder is Empty")
            return nil
        }
        self.folder = folder
    }
}
var objfile = file(folder: "Jay")
if objfile != nil{
    print("File Found Succesfully")
} else{
        print("File Not Found")
    }

class Race{
    var laps: Int?
    
    init() {
        laps = 5
        print("Race Completed ")
        print("Total Race Laps are \(laps)")
    }
    deinit{
        laps = nil
        print("Memory Deinitializers")
    }
}
var result:Race? = Race()
result = nil

var counter12 = 0
class baseclass{
    init() {
        counter12 += 1
    }
    deinit{
        counter12 -= 1
    }
}
var print12: baseclass? = baseclass()

//optional Chaining
class Electionpoll {
    var candidate: Pollbooth?
    var name1 = "Jay"
}
class Pollbooth{
    var name = "MP"
}
let cand = Electionpoll()
cand.candidate = Pollbooth()
if let candname = cand.candidate {
    print("Candidate name is \(candname.name)")
}else{
    print("No Candidate is found")
}

//Error Handling
enum DivisionError : Error {
    case dividedByZero
}
func divi(numerator: Int,denominator: Int) throws {
    if denominator == 0{
        throw DivisionError.dividedByZero
    }else{
        let resu = (numerator/denominator)
        print(resu)
    }
}
do {
    try divi(numerator: 12, denominator: 5)
    print("Valid Division")
}
catch DivisionError.dividedByZero{
    print("Error : Denominator cannot be zero")
}

enum BikeError : Error {
    case insufficientPetrolQuantity
}
struct Bike1{
    func startPicnic(PetrolQunatity: Int)throws -> String {
        if PetrolQunatity < 4{
            // throw an error
            throw BikeError.insufficientPetrolQuantity
        }
        return"Let the Picnic begin"
    }
}
let obj = Bike1()
do{
    try obj.startPicnic(PetrolQunatity: 9)
}catch BikeError.insufficientPetrolQuantity {
    print("Error has Occur")
}

//Inheritance
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

//prevent method overriding
class vehicle {
    var speed1:Int = 25
    var speed : Int{
        return 150
    }
     func displayInfo() {
       print("Four wheeler or Two wheeler ")
    }
}
class car : vehicle {
    override var speed: Int{
        print("\(super.speed)")
        return 200
    }
    override func displayInfo() {
        print("Fourwheeler")
    }
}
var car1 = car()
car1.displayInfo()
print("\(car1.speed)")
// Stored properties are not overridden but Computed properties are overridden
//Type Casting
class Employee {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Departments: Employee {
    var department: String
    init(name: String,department: String) {
        self.department = department
        super.init(name: name)
    }
}
class Financials: Employee {
    var Salary: String
    init(name: String, salary: String) {
        Salary = salary
        super.init(name: name)
    }
}
let employeeDetials = [
Departments(name: "Jay", department: "Admin"),
Financials(name: "Dhruv", salary: "Sales"),
Departments(name: "Ram", department: ""),
Financials(name: "Jay", salary: ""),
Departments(name: "", department: "")
]
print("\(employeeDetials[0].name)")
var deptCount = 0
var financeCount = 0
for i in employeeDetials {
if i is Departments {
deptCount += 1
} else if i is Financials {
financeCount += 1
}
}
print("The Employee Info contains \(deptCount) Departments and \(financeCount) Salaries")

for item in employeeDetials{
    if let dept = item as? Departments{
        print("Name : \(dept.name) Department: \(dept.department)")
    }else if let fina = item as? Financials{
        print("Name: \(fina.name) Salary: \(fina.Salary)")
    }
}
//Nested type
class Person {
        var health = Health()
    class Health{
        var pulse: Int = 100
        var bmi: Int = 20
        func profile()-> String {
            return "Pulse:- \(self.pulse) Bmi:- \(self.bmi)"
        }
    }
}
let p12 = Person()
p12.health.profile()

