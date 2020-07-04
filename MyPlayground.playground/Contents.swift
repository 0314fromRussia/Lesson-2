import Foundation

enum TurnOnTheEngine {
    case on, off
}

enum WindowsPosition {
    case open, close
}

enum LoadTrunk {
    case load, unload
}

struct PassengerCar {
    
    var brand: String
    var yearRelease: UInt
    var trunVolume: UInt
    var engineStarted: TurnOnTheEngine
    var windowsOpen: WindowsPosition
    var cargoVolume: UInt
    
    mutating func startEngine (switchEngine: TurnOnTheEngine) -> TurnOnTheEngine {
        engineStarted = switchEngine
        return engineStarted
    }
    mutating func windowRegulation(switchWindows: WindowsPosition) -> WindowsPosition {
        windowsOpen = switchWindows
        return windowsOpen
    }
    mutating func freeVolume(loadingWork: LoadTrunk) -> UInt {
        
        switch loadingWork {
        case .load:
            return trunVolume - cargoVolume
        case .unload:
             return trunVolume
        }
    }
}

var car1 = PassengerCar(brand: "bmw", yearRelease: 2001, trunVolume: 1000, engineStarted: .off, windowsOpen: .close, cargoVolume: 200)

car1.startEngine(switchEngine: .on)
car1.windowRegulation(switchWindows: .close)
car1.freeVolume(loadingWork: .load)


struct TruckCar {
    
    var brand: String
    var yearRelease: UInt
    var trunVolume: UInt
    var engineStarted: TurnOnTheEngine
    var windowsOpen: WindowsPosition
    var cargoVolume: UInt
    
    mutating func startEngine (switchEngine: TurnOnTheEngine) -> TurnOnTheEngine {
        engineStarted = switchEngine
        return engineStarted
    }
    mutating func windowRegulation(switchWindows: WindowsPosition) -> WindowsPosition {
        windowsOpen = switchWindows
        return windowsOpen
    }
    mutating func freeVolume(loadingWork: LoadTrunk) -> UInt {
        
        switch loadingWork {
        case .load:
            return trunVolume - cargoVolume
        case .unload:
             return trunVolume
        }
    }
}

var car2 = TruckCar(brand: "Volvo", yearRelease: 2020, trunVolume: 5000, engineStarted: .on, windowsOpen: .close, cargoVolume: 2700)

car2.startEngine(switchEngine: .on)
car2.windowRegulation(switchWindows: .close)
car2.freeVolume(loadingWork: .load)
