import UIKit

/*
 Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

 A property storing how many rooms it has.
 A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
 A property storing the name of the estate agent responsible for selling the building.
 A method for printing the sales summary of the building, describing what it is along with its other properties.
 */

protocol    Building {
    var countRooms: Int {get set}
    var cost: Int {get set}
    var nameOfState: String {get set}
    
    func    sammuryOfTheBuilding()
}

struct  House : Building {
    var countRooms: Int
    var cost: Int
    var nameOfState: String
    
    func    sammuryOfTheBuilding() {
        print("This house has Rooms => \(countRooms), Cost => \(cost), Name of State => \(nameOfState)")
    }
}

struct  Office : Building {
    var countRooms: Int
    var cost: Int
    var nameOfState: String
    
    func    sammuryOfTheBuilding() {
        print("This Office has Rooms => \(countRooms), Cost => \(cost), Name of State => \(nameOfState)")
    }
    
}

let house = House(countRooms: 4, cost: 500000, nameOfState: "omakran")
let office = Office(countRooms: 3, cost: 100000, nameOfState: "omakran")

house.sammuryOfTheBuilding()
office.sammuryOfTheBuilding()
