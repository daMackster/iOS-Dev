/*:
 # Chapter Challenge: Item Class
 ---
 
 ### Tasks
 1. Create a class called **Item**
 2. Add instance properties for **name** and **value**
 3. Write a designated initializer
 4. Write a convenience initializer
 5. Create an enum called **ItemType** and assign it a few cases
 6. Declare a new class called **HealingPotion** as a subclass of **Item**
 7. Give **HealingPotion** instance properties for **itemType** (use your ItemType enum for its type) and **hpEffect** of type Int
 8. Write a designated initializer and call the super classes designated initializer
 9. Write a simple function called **useMe** that prints out the **HealingPotion**'s hpEffect
 
 10.Create an instance of **HealingPotion** and play around with it
 */
// 1
class Item {
    //2
    var name: String
    var value: Int
    
    //3
    init(name: String, value: Int) {
        self.name = name
        self.value = value
    }
    
    //4
    convenience init (name: String){
        self.init(name: name, value: 0)
    }
}

//5
enum ItemType{
    case GOOD
    case BETTER
    case BEST
}

//6
class HealingPotion: Item {
    var itemType:  ItemType = .BEST
    var hpEffect: Int
    
    init(name: String, value: Int, effect: Int) {
        self.hpEffect = effect
        super.init(name: name, value: value)
    }
    
    func useMe(){
        print("HP boosted \(hpEffect)")
    }
}

var potion = HealingPotion(name: "Super Potion", value: 100, effect: 150)
print(potion.name)
potion.useMe()




// 2

// 3

// 4

// 5

// 6

// 7

// 8

// 9

// 10

//: [Previous Topic](@previous)

