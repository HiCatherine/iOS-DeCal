
import Foundation
import XCTest

//: # Homework 1 - Swift Playground
//: ## Question 1: arePalindromes
//: Fill out the following function to detect whether or not each word in `words` is a palindrome
/// Returns true if each word in the given list is a palindrome
/// (a phrase/word that reads the same backwards as it does forward.)
/// If any of the words is not a palindrome, return false
///
/// - Parameter words: list of strings
/// - Returns: true if every word in `words` is a palindrome, false otherwise
func arePalindromes(_ words: [String]) -> Bool {
    //The following skeleton code has been provided. A string in Swift is indexed using a String.index object.
    //ex. using 'front' below, "hello"[front] -> "h"
    for word in words {
        let front = word.index(word.startIndex, offsetBy: 0)
        let back = word.index(word.startIndex, offsetBy: word.count - 1)
        var currFront = front
        var currBack = back
        while (currFront <= currBack) {
            if (word[currFront] == word[currBack]) {
                currFront = word.index(currFront, offsetBy: 1)
                currBack = word.index(currBack, offsetBy: -1)
            } else {
                return false
            }
        }
    }
    return true
}
//: ## Question 2: Optionals
//: Someone stole a cookie from the GBC! At the crime scene, they found a blue book in the cookie jar with the SID `25346602` on it, no doubt it belonged to the criminal. The manager needs your help finding who it belongs to. Complete this function using the provided dictionary of SIDS called `studentIDNumbers` to find the culprit.
/// Returns a formatted string of the culprit given a VALID SID.
///
/// - Note: A valid SID consists of exactly 8 digits. You need to enforce this in your implementation and return nil if it's not satisfied.
///
/// - Parameters:
///   - sid: an integer or nil
///   - studentIDNumbers: Dictionary of SIDs to names.
/// - Returns: The formatted string "NAME stole the cookie!" if given a valid SID, nil otherwise.
func findStudent(withStudentID sid: Int?, studentIDNumbers: [Int: String] = getSIDsDictionary()) -> String? {
    // studentIDNumbers has a default value (which is the SID dictionary), so you can use it directly like studentIDNumbers[50277282] -> "Tom"?.
    // Note: studentIDNumbers[KEY] always returns an optional since there may not be an entry for that KEY.
    //HINT: Remember 'if let' syntax!
    
    // your code here
    if let number = sid {
        if let ret = studentIDNumbers[number] {
            return ret + " stole the cookie!"
        } else {
            return nil
        }
    }
    return nil
}
    
findStudent(withStudentID: 25346602) // the culprit!
findStudent(withStudentID: 50277282) // Tom stole the cookie!
findStudent(withStudentID: nil) // nil
findStudent(withStudentID: 40979255) // nil
//: ## Question 3: Protocols
//: Make the class `Building` conform to the `Equatable` Protocol, and implement `getCapacity()`.

//HINT: Refer to the swift documentation for protocols, especially the Equatable Protocol. We will go over this in class on Monday.
class Building: Equatable {
    
    var name: String
    var capacity: Int?
    
    init(name: String = "A Building", capacity: Int? = nil) {
        self.name = name
        self.capacity = capacity
    }
    
    static func == (lhs: Building, rhs: Building) -> Bool {
        return lhs.name == rhs.name && lhs.capacity == rhs.capacity
    }
    
    //: Returns the `capacity` of the building. If the `capacity` is `nil`, then return `0`.
    func getCapacity() -> Int {
        if let num = self.capacity {
            return num
        }
        return 0
        // your code here
    }
}

let building = Building()
building.getCapacity() // 0
let sodaHall = Building(name: "Soda Hall", capacity: 2356)
sodaHall.getCapacity() // 2356
let coryHall = Building(name: "Cory Hall", capacity: 3489)
//building == sodaHall // false
//sodaHall == sodaHall // true
//sodaHall == coryHall // false
//: ## Question 4: Closures
//: `percentageString` creates a string represeting the given number as `Double`. This is such a simple function - let's change it to a closure! Rewrite `percentageString` as a closure in `percentageStringClosure`
func percentageString(forNumber x: Double) -> String {
    return String(x*10) + "%"
}

//HINT: You can explicitly declare a closure type
//ex. PercentageStringClosure: (Input Type) -> (Return Type)
var percentageStringClosure = {
    (x: Double) -> String in
    return String(x*10) + "%" // your code here
}

//: Tests below (Ignore)
class PlaygroundTests: XCTestCase {
    func testArePalindromes() {
        XCTAssertTrue(arePalindromes(["able was I ere I saw elba", "racecar"]), "`['able was I ere I saw elba', 'racecar']` should return true.")
        XCTAssertFalse(arePalindromes(["hello world", "racecar"]), "`['hello world', 'racecar']` should return false.")
    }
    
    func testFindStudent() {
        XCTAssertNil(findStudent(withStudentID: nil), "findStudent(withStudentID: nil) should return nil.")
        XCTAssertNil(findStudent(withStudentID: 2342), "findStudent(withStudentID: 2342) should return nil.")
        XCTAssertNil(findStudent(withStudentID: 40979255), "findStudent(withStudentID: 40979255) should return nil since the SID 40979255 is not in the dictionary.")
        XCTAssertEqual(findStudent(withStudentID: 25346602),
                       String(data: Data(base64Encoded: "T3NraSBzdG9sZSB0aGUgY29va2llIQ==")!, encoding: .utf8), "findStudent(withStudentID: 25346602) should return the formatted string with the culprit.")
    }
    
    func isEquatable<T: Equatable>(obj: T) -> Bool { return true }
    func isEquatable<T>(obj: T) -> Bool { return false }
    func testBuildingEquatable() {
        XCTAssertTrue(isEquatable(obj: building), "Q3. Building conforms to Equatable.")
    }

    func testPercentangeStringClosure() {
        let closure: Any? = percentageStringClosure
        if let closure = closure as? (Double) -> String {
            XCTAssertEqual("40.0%", closure(4.0), "Q4. percentageStringClosure returns incorrect string.")
        } else {
            XCTFail("Q4. percentageStringClosure has an incorrect function type.")
        }
    }
    
}
//: ## Uncomment this line to run tests
PlaygroundTests.defaultTestSuite.run()

