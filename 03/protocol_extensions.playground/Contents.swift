import UIKit

//extension of !isEmpty
//  Array, Set, and Dictionary all conform to a built-in protocol called => Collection
// Collection is a Protocol

extension   Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Omar", "Anouar", "Said", "Oussama"]

if guests.isNotEmpty {
    print("Guess count is: \(guests.count)")
}

// ####################################################################################################################################################

// Person Protocol
/*
 { get }: This indicates a read-only computed property. It means you can retrieve its value, but you can't directly assign a new value to it.
 
 get: Specifies a getter, a special method that provides the value of the property when accessed.
 How It Works:

 Accessing the Property:
 When you attempt to read the name property (e.g., print(person.name)), the get block is automatically executed.
 Getter Implementation:
 The code within the get block determines the value to return. It usually involves calculations, transformations, or retrieving data from other sources.
 Returning the Value:
 The get block must return a value of the property's type (String in this case).

 */
protocol    Person {
    var name: String { get }
    func    sayHello()
}

// extension of the Person Protocol
extension   Person {
    func    sayHello() {
        print("Hi, I'm \(name)")
    }
}

// Strucut Employee that confirms Person Extension
struct   Employee : Person {
    let name: String
}

let omakran = Employee(name: "Omar Makran")
omakran.sayHello()
