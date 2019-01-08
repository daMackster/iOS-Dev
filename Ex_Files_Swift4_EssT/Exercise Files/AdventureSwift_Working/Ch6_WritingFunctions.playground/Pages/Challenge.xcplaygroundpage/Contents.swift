/*:
 # Chapter Challenge: Battle Grounds
 ---
 
 ### Tasks
 1. Create a type alias called **Attack** with named values for name and damage
 2. Create a type alias called **ScoreClosure** with a integer array as parameter and no return value
 3. Write a simple function called **attackEnemy** with an integer parameter that prints out an interpolated string
 4. Write an overloaded version of **attackEnemy** with a parameter of type Attack and returns a boolean
 5. Use both **attackEnemy** methods
 6. Write a function called **fetchPlayerScores** that has a closure parameter of type ScoreClosure and use it to return an array of scores
 7. Call the **fetchPlayerScores** closure, loop through the scores and print out an interpolated string
 */
// 1
typealias Attack = (name: String, damage: Int)

// 2
typealias ScoreClosure = ( [String: Int] )  -> Void

// 3
func attackEnemy(damage: Int){
    print("Damage: \(damage)\n")
}

// 4
func attackEnemy(attack: Attack) -> Bool {
    print("You attacked with \(attack.name)\nEnemy hit for \(attack.damage)!\n")
    return true
}

// 5
attackEnemy(damage: 5)
var enemyWasDefeated = attackEnemy(attack: ("Jump",2))

// 6
func fetchPlayersScores(closure: ScoreClosure){
    let shopItems = ["Mage Robes":34, "Rangers Tunic":13, "Warriors Belt":5]
    closure(shopItems)
}


// 7

fetchPlayersScores { (itemsDictionary) in
    for (item, value) in itemsDictionary {
        print("\(item) worth \(value)")
    }
}

//: [Previous Topic](@previous)
