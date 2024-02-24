import UIKit

/*
 Protocols let us define how structs, classes, and enums ought to work: what methods they should have, and what properties they should have.
 Swift will enforce these rules for us, so that when we say a type conforms to a protocol Swift will make sure it has all the methods and properties required by
 that protocol.
 */

// Protocol
protocol    Vehicle {
    var name: String {get}
    var currentPassengers: Int {get set}
    func    estimateTime(for distance: Int) -> Int
    func    travel(distance: Int)
}

// Struct Car that conforms to Vehicle
struct  Car: Vehicle {
    let name = "Car"
    var currentPassengers = 0
    func    estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func    travel(distance: Int) {
        print("I'm driving \(distance)Km")
    }
    
    func    openSunroof() {
        print("It's a nice Day!")
    }
}

// Struct Bicycle that conforms to Vehicle
struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 0
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

// Function using Prorocol for Parameter function
func    commute(distance: Int, using vehicle: Vehicle)  {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too sllow! I'll try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}

func    getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [car, bike], distance: 150)
