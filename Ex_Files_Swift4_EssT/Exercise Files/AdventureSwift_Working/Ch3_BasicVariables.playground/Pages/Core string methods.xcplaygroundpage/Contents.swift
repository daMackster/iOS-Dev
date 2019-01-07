/*:
 # Core string methods
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll no doubt use on a regular basis, and which we'll go over, including `contains`, `append`, `insert`, `remove`, and `split`. Feel free to refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Create a simple string called **welcomeText** that we can practice on
 + Use each of the mentioned class methods to alter the starting string
 */
// Test variable
var welcomeTest = "Swift 4"

// More string class methods
welcomeTest.contains("S")
welcomeTest.append(", the adventure continues!")
welcomeTest.insert(contentsOf: "Welcome to ", at: welcomeTest.startIndex)
welcomeTest.remove(at: welcomeTest.index(before: welcomeTest.endIndex))
welcomeTest.split(separator: ",")

print(welcomeTest)
/*:
 [Previous Topic](@previous)
 
 [Next Topic](@next)
 */
