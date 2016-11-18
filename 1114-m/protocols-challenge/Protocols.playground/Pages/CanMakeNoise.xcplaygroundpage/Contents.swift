//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
  func makeNoise()
}

class Human: CanMakeNoise {
    var noise = "Let us walk in a way, of dignity, unlke the way of a pig and/or cow"
    
    func makeNoise() {
        print(noise)
    }
    
  
}

class Pig: CanMakeNoise {
    var noise = "Oink Oink"
    
    func makeNoise() {
        print(noise)
    }
  
}

class Cow: CanMakeNoise {
    var noise = ""
    
    func makeNoise() {
        print(noise)
    }
}

let human = Human()
let pig = Pig()
let cow = Cow()

 let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]

for i in arrayOfNoiseMaker {
    i.makeNoise()
}


/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */

