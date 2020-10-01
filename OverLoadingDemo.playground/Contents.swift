import Foundation

class BaseClass {
    
    func someString(text : String){
        print("text is :- \(text)")
    }
    
    func someInteger(number : Int, text: String){
        print("the numers is :- \(number) \n text is \(text)")
    }
}

class DemoClass: BaseClass {
    
    func someString(text : String, number : Int, status: Bool){
        print("the text is :- \(number) \n number is \(text) \n status = \(status)")
    }
    
    func someInteger(number : Int){
        print("numers are :- \(number)")
    }
}

var demo = DemoClass()
demo.someString(text: "Hello World")
demo.someInteger(number: 12345, text: "this is text")
demo.someString(text: "dummy text", number: 54321, status: true)
demo.someInteger(number: 123456)


//MARK:  Two functions with the same name but having different number or types of parameters passed is known as function overloading.
