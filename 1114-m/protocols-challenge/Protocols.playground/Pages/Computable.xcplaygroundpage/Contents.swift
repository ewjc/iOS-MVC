//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

class Sum: Computable {
    var numbers = [1,2,3,4,5,6,7,8,9]
    
    func compute() -> Int {
        
        var result = 0
        
        for i in numbers {
            result += i
        }
        return result
    }
}

class Product: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    
    func compute() -> Int {
        var result = 1
        
        for i in numbers {
            result *= i
        }
        return result
    }
}

class CountCharacters: Computable {
  var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    
    func compute() -> Int {
        return string.characters.count
    }
}

class Random: Computable {
    var numbers = [1,2,3,5,8,13,21,34,55,89,144]
    func compute() -> Int {
        var results = 1
        
        for i in numbers {
            results *= i
        }
            return results
    }
  
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]

print(sum.compute())
print(product.compute())
print(countCharacters.compute())
print(random.compute())

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

