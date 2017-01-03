// Delegate

import Foundation

// Two year old
// Mom (delegate) = skill special

protocol Cookable {
    func makeFood() -> Void
}

struct Mom:Cookable {
    func makeFood() {
        print("food is here... baby")
    }
}

var mom = Mom()
mom.makeFood()

struct Baby {
    var delegate = Cookable?
}

var bob = Baby()
bob.delegate = mom

bob.delegate.makeFood()
bob.delegate.makeFood()
bob.delegate.makeFood()
bob.delegate.makeFood()