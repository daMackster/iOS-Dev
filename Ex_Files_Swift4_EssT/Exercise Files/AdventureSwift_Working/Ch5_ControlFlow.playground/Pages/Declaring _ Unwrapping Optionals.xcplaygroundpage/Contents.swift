/*:
 # Declaring & Unwrapping Optionals
 ---
 
 ## Topic Essentials
 An optional variable means that there is either a value stored in that variable, in which case we can unwrap and use it, or their isn’t, in which case it’s nil. To put it another way, if you have an optional string variable, you are saying that the string may either have a string value or it may be nil.
 
 ### Objectives
 + Create a few optional variables of different types
 + Use optional binding to unwrap one of the optional variables and handle if it is nil
 + Unwrap multiple optionals in a single line of code for more compact structure
 + Use force unwrapping and understand the dangers of using it 
 */
// Creating optionals
var itemGathered: String? = "Pickaxe"
var expToNextLevel: Int? = 10
var hpBonus: Int?

// Optional binding
if let item = itemGathered {
    print("You found a \(item)")
}else{
    print("No item found")
}

if let expNeeded = expToNextLevel, let bonus = hpBonus {
    print("You need \(expNeeded) EXP to reach the next level, and receive \(bonus) HP!")
}else{
    print("You level is already maxed out!")
}

// Forced unwrapping
//hpBonus!
itemGathered!



/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
