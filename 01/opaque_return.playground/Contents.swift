import UIKit

protocol View { }


/*
 In Swift, Equatable is a protocol that defines how two objects of a particular type can be compared for equality.
 It provides a standardized way to check if two instances of a custom type represent the same thing, regardless of their memory location.
 
 Opaque return types allow functions to return a specific type, but keep the exact concrete type hidden from the caller.
 This enhances flexibility and abstraction, as the function can switch between different implementations as needed, without breaking clients.
 */

func    getRandomNumber() -> some Equatable {
    Int.random(in: 1...10)
}

func    getRandomBool() -> some Equatable {
    Bool.random()
}


print(getRandomNumber() == getRandomNumber())
