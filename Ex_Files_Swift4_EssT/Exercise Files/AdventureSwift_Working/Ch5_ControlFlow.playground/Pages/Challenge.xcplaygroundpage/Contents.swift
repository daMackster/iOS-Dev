/*:
 # Chapter Challenge: Game Conditions
 ---
 ### Tasks
 1. Create an optional called **currentWeapon** and assign it a string value
 2. Use optional binding to access **currentWeapon**
 3. Creat a variable called **currentEXP** and assign it an integer value
 4. Use a `switch` statement with **currentEXP** to evaluate different cases
 5. Create a dictionary called **playerLevels** and assign it some key-value pairs of type string and integer
 6. Use a `for-in` loop to iterate over **playerLevels** and print out its key-value pairs in an interpolated string
 7. Add a guard statement inside the `for-in` loop to mamke sure each player is at least level 1 to proceed
 */
// 1
var currentWeapon: String? = "Axe"

// 2
currentWeapon!

// 3
var currentEXP = 10

// 4
switch currentEXP {
case (1...9):
    print("Not at that level")
case (10):
    print("Congratulations! You are now an Expert!")
default:
    print("Sorry, we could not evaluate your experience!")
}
// 5
var playerLevels = ["Expert": 10, "Intermediate": 5, "Beginner": 1]

// 6
for levels in playerLevels {
    print("Your score is \(levels.value) with \(levels.key) level")
}

// 7
for level in playerLevels {
    guard (level.value > 1) else {
        print("Sorry, you are a \(level.key). You didn't make the cut! Better luck next time.")
        continue
    }
    
    print("Congratulations, you can proceed at \(level.key)")
}


//: [Previous Topic](@previous)
