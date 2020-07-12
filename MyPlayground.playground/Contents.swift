import Foundation

enum Position {
    
    case right, left
}

enum Volume {
    case big, medium, little
}

protocol AllCars {
    
    var positionWheel: Position { get set }
    var doorsCount: Int { get set }
    var color: String { get set }
    
    func drive()
}

extension AllCars {
    
    mutating func repaint(newColor: String) -> String {
        color = newColor
        return newColor
    }
}

extension AllCars {
    
    mutating func changePositionWheel(newPosition: Position) -> Position {
        positionWheel = newPosition
        return newPosition
    }
}

extension AllCars {
    
    func drive(line: Position) {
        print("начинаем движение в \(line)")
    }
}

class Cars: AllCars {
    
    var positionWheel: Position
    
    var doorsCount: Int
    
    var color: String
    
    func drive() {
        print("Машина поехала")
    }
    
    init(wheel: Position, door: Int, color: String) {
        self.positionWheel = wheel
        self.doorsCount = door
        self.color = color
    }
}

class TrunkCar: AllCars {
    
    func drive() {
        print("поехали в неизвестном направлении")
    }
    
    var positionWheel: Position
    
    var doorsCount: Int
    
    var color: String
    
    var maxVolume: Volume
    
    init(wheel: Position, door: Int, color: String, volume: Volume) {
        self.positionWheel = wheel
        self.doorsCount = door
        self.color = color
        self.maxVolume = volume
    }
}

extension TrunkCar: CustomStringConvertible {
    
    var description: String {
        return "\(color), \(maxVolume), \(doorsCount), \(positionWheel)"
    }
}

enum Speed {
    case fast, superFast
}

class SportCar: AllCars {
    
    func drive() {
        print("поехали в неизвестном направлении")
    }
    
    var positionWheel: Position
    
    var doorsCount: Int
    
    var color: String
    
    var maxSpeed: Speed
    
    init(wheel: Position, door: Int, color: String, speed: Speed) {
        self.positionWheel = wheel
        self.doorsCount = door
        self.color = color
        self.maxSpeed = speed
    }
}

extension SportCar: CustomStringConvertible {
    
    var description: String {
        return "\(color), \(maxSpeed), \(doorsCount), \(positionWheel)"
    }
}

var myTrunkCar = TrunkCar(wheel: .left, door: 4, color: "Black", volume: .big)
myTrunkCar.drive()
myTrunkCar.drive(line: .left)
myTrunkCar.description
myTrunkCar.repaint(newColor: "Blue")
myTrunkCar.changePositionWheel(newPosition: .right)
myTrunkCar.description

var mySportCar = SportCar(wheel: .left, door: 2, color: "Red", speed: .fast)
mySportCar.color
mySportCar.drive()
mySportCar.changePositionWheel(newPosition: .right)
mySportCar.drive(line: .left)
mySportCar.repaint(newColor: "Grey")
mySportCar.description

print("Характеристики спортивного автомобиля:" + mySportCar.description)
print("Характеристики грузового автомобиля:" + myTrunkCar.description)
