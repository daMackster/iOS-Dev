/*:
 # Complex Functions
 ---
 
 ## Topic Essentials
 Functions in Swift can go from simple to complex very quickly. Having multiple return types, optionals, and even default values.
 
 ### Objectives
 + Create a new function called **requestItemTrade** with 2 return values
 + Create a function called **requestTrade** with a string parameter and an optional string for a return type
 + Create a function called **setupArenaMatch** with two parameters, both with default values
 */
// Function with multiple return values
func requestItemTrade(myItem: String) -> (yourItem: String, value: Int) {
    
    print("Can I trade my \(myItem)?")
    return("Sacred Sheild", 300)
}

let tradeItem = requestItemTrade(myItem: "Old Hat")
print("Recieved \(tradeItem.yourItem) valued at \(tradeItem.value)\n")


// Function with optional return value
func requestTrade(myItem: String) -> String? {
    let returnItem = "Garbage Sword"
    return returnItem
}

if let item = requestTrade(myItem: "Spiked Boots") {
    print("\(item) received!\n")
} else {
    print("Trade fell through\n")
}
// Function with default values
func setupArenaMatch(level: String = "Fire Marshalls", numberOfOpponents: Int = 2){
    print("Your arena match will take place in \(level) between \(numberOfOpponents) players.")
}
setupArenaMatch()
setupArenaMatch(level: "Poison Flats", numberOfOpponents: 5)

/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
