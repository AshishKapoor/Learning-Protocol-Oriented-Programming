// protocols inheritance itself

import Foundation

protocol Mammable {
    var isBreathing: Bool { get set }
    func roar()
}

protocol Walkable {
    var canWalk: Bool { set get }
}

protocol Humanable: Mammable {
    var isWriting: Bool { get set }
    func chill()
}

struct Bob: Humanable {
    
    var isBreathing: Bool = true
    func roar() {
        print("ROOOAAAAARRR!")
    }
    
    var isWriting: Bool = true
    func chill() {
        print("Netflix and Chill")
    }
}

// Conforming to multiple protocol

struct Bobby: Mammable, Walkable {
    var isBreathing: Bool = true
    var canWalk: Bool = true
    func roar() {
        print("Cat stufff")
    }
}
