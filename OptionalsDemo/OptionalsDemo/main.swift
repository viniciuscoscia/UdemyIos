//
//  main.swift
//  OptionalsDemo
//
//  Created by Vinicius Nunes Coscia on 19/09/2024.
//

var myOptional: String?

myOptional = nil

if myOptional != nil {
    let text: String = myOptional!
    let text2: String = myOptional!
} else {
    print("myOptional is nil")
}

myOptional = "Angela"

if let safeOptional = myOptional {
    print(safeOptional) // prints Angela
}

myOptional = nil

print(myOptional ?? "myOptional is nil") // Prints "myOptional is nil"

struct MyOptional {
    var property = 123
    
    func method() {
        print("I'm a struct's method")
    }
}


let myOptionalStruct: MyOptional?

myOptionalStruct = MyOptional()

print(myOptionalStruct?.property ?? 0)

myOptionalStruct?.method()



