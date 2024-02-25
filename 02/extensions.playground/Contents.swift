import UIKit

/*
 Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
 This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling).
 Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions don’t have names.)

 Extensions in Swift can:

 Add computed instance properties and computed type properties

 Define instance methods and type methods

 Provide new initializers

 Define subscripts

 Define and use new nested types

 Make an existing type conform to a protocol
 */

extension   String {
    // when we return a new value we used trimmed(), but when we modified the string directly we used trim().
    func    trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func   trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

var quote = "    the truth is rarely    pure   and   never      simple          "
let trimed = quote.trimmingCharacters(in: .whitespaces)
quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)
print(lyrics.lines)

struct  Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
    
//    init(title: String, pageCount: Int) {
//        self.title = title
//        self.pageCount = pageCount
//        self.readingHours = pageCount / 50 // Error, we can't init the readingHours
// }
}

extension   Book {
    // the same code in init of struct, and is solve the problem.
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50 // => default value
    }
}


let omakran = Book(title: "Omar Makran", pageCount: 120, readingHours: 20)
print(omakran.readingHours) // 20 => the new value
