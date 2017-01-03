// Protocol as Type
import Foundation

protocol Fightable {
    func start()
    func legKick()
}

// What if you wanna extend this with an Alpha Kangaroo or Beta or Zeta...
extension Fightable {
    func start() {
        print("Pukkkkkkkkkkkkkkk!!")
    }
    
    func legKick() {
        print("Booooooooooooooom!!")
    }
}


struct Kangaroo: Fightable {
}

class NewKangaroo: Fightable {
}


// From a struct
var structKangaroo  = Kangaroo()
var classKangaroo   = NewKangaroo()

// Array of fightable confirming protocol with class and struct object.
var kangArray: [Fightable] = [classKangaroo, structKangaroo]


// You can combine a struct and a class so that you don't have to provide As Any in your program.
for kang in kangArray {
    print(kang.start())
    print(kang.legKick())
}