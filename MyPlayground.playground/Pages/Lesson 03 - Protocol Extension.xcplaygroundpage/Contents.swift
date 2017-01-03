// Protocol extension

import Foundation

protocol Fightable {
    func start()
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
    //    func start() {
    //        print("Pukkkk!!")
    //    }
    //
    //    func legKick() {
    //        print("Boom")
    //    }
}

class AlphaKangaroo: Fightable {
//        func start() {
//            print("Pukkkk!!")
//        }
//    
//        func legKick() {
//            print("Boom")
//        }
}


// From a struct
var kangaroo = Kangaroo()
kangaroo.legKick()
kangaroo.start()

// From a class
var alphaKangaroo = AlphaKangaroo()
alphaKangaroo.legKick()
alphaKangaroo.start()