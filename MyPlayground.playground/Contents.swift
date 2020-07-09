import Foundation

class Car {
    
    var quantityDoors: Int
    var yearRelease: Int
    var enginePower: Int
    var color: String
    
    func repaint(newColor: String) -> String {
        
        color = newColor
        return newColor
    }
    
    
    init(doors: Int, year: Int, power: Int, color: String) {
        self.quantityDoors = doors
        self.yearRelease = year
        self.enginePower = power
        self.color = color
    }
}

enum Speed {
    case fast, superFast
}


class SportCar: Car {
    
    var brand: String
    var torque: Int
    var maxSpeed: Speed

    func speedMax(_: Speed) {
        
        var carSpeed: Int
        
        switch maxSpeed {
        case .fast:
            carSpeed = 300
    
        case .superFast:
            carSpeed = 400
        }
        print("Максимальная скорость твоего автомобиля \(carSpeed)")
    }
    
    override func repaint(newColor: String) -> String {
        
        if color == "Red"{
            print("отличный цвет для спортивной машины")
        }else{
            color = newColor
        }
        return newColor
    }
    
    init(brand: String, torque: Int, speed: Speed) {
        self.maxSpeed = speed
        self.torque = torque
        self.brand = brand
        super.init(doors: 2, year: 2010, power: 500, color: "Red")  // не очень понимаю почему тут обязательно заполнять реальными значениями doors year power и тд, они будут использованы если init Car каким-то образом не сработает? Мы же всегда сначала Car создадим, а потом SportCar
    }
}

enum Volume {
    case big, medium, little
}

class TrunkCar: Car {
    
    var brand: String
    var maxVolume: Volume
    var trailer: Bool
    
    func volumeMax(_: Volume) {
        
        var carVolume: Int
        
        switch maxVolume {
        case .big:
            carVolume = 10
    
        case .medium:
            carVolume = 5
        
        case .little:
            carVolume = 2
        }
        print("Максимальная грузоподъемность твоего автомобиля: \(carVolume) ")
    }
    
    override func repaint(newColor: String) -> String {
           
           if color == "Red"{
               print("Слишком броско для твоей машины")
           }else{
               color = newColor
           }
           return newColor
       }
    
    init(brand: String, volume: Volume, trailer: Bool) {
        self.maxVolume = volume
        self.trailer = trailer
        self.brand = brand
        super.init(doors: 4, year: 2000, power: 200, color: "Black")
    }
}

var mainCar = Car(doors: 2, year: 2008, power: 300, color: "grey")
var sportCar = SportCar(brand: "BMW", torque: 500, speed: .fast)
var trunkCar = TrunkCar(brand: "Volvo", volume: .big, trailer: true)

mainCar.color = "Red"
sportCar.repaint(newColor: "Green")
print(mainCar.color)
trunkCar.repaint(newColor: "Purple") // не могу понять почему нет принта "Слишком броско для твоей машины"
print(mainCar.color)

sportCar.speedMax(.fast)
trunkCar.volumeMax(.little)

