import Foundation
import PlaygroundSupport

// Phanotm type

struct BloodType<Type>: Equatable {
    let amount: Double
    
    static func + (lhs: BloodType, rhs: BloodType) -> Double {
        lhs.amount + rhs.amount
    }
}

enum One {}
enum Two {}
enum Three {}
enum Four {}

let vessalOne = BloodType<One>(amount: 100)
let vessalTwo = BloodType<One>(amount: 100)
let vessalThree = BloodType<Two>(amount: 50)

print(vessalOne + vessalTwo)
// You cannot transpose different blood types
print(vessalTwo + vessalThree)

PlaygroundPage.current.finishExecution()
