// Protocols programming

import Foundation

// coach (protocol) and Athelete (Struct)

protocol Humanable {
    var name: String { get set }
    var isAlive: Bool { get set }
    func sayHi()
}

struct Human: Humanable {
    var name: String = "Ashish"
    var isAlive: Bool = true
    func sayHi() {
        print("I am a Human Class Stuff")
    }
}

class Animal: Humanable {
    var name: String = ""
    var isAlive: Bool = true
    func sayHi() {
        print("I am an Animal Class Stuff")
    }
    init(name: String, isAlive: Bool) {
        self.name = name
        self.isAlive = isAlive
    }
}

/////////// Example

protocol FindAreable {
    var area: Double { get set }
}

struct Square: FindAreable {
    // Value types properties
    var side: Double = 100
    
    // Computed types properties
    var area: Double {
        get {
            return side * side
        } set {
            side = sqrt(newValue)
        }
    }
}

// For computed type property
// get set --> always follow the convention
// get --> do whatever you want including normal property and computed property

var ten = Square(side: 10)
ten.area
ten.area = 500
ten.side



