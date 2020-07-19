import Foundation


enum ErrorsWithPlanets: Error {
    
    case thereIsNoSuchPlanet
    case youCannotAddSatelliteAsPlanet
}

class PlanetsOfTheSolarSystem {
    
    var planets = [ "Mercury", "Venusian", "Earth", "Mars", "Jupiter", "Neptune", "Uranus"]
    
    func addPlanet(planet: String) throws -> ErrorsWithPlanets? {
        guard planet != "Moon" else{
            throw ErrorsWithPlanets.youCannotAddSatelliteAsPlanet
        }
        planets.append(planet)
        return nil
    }
    
    func destroyPlanet(planet: String) -> (String?, ErrorsWithPlanets?) {
        
        if planets.contains(planet) == true {
            
            planets.removeAll { $0 == planet }
        } else {
            print("Такой планеты в солнечной системе нет!")
            return ( nil, ErrorsWithPlanets.thereIsNoSuchPlanet)
        }
        return ("Планета \(planet) уничтожена", nil)
    }
}
var sunSystem = PlanetsOfTheSolarSystem()
sunSystem.destroyPlanet(planet: "Mars")

do {
   try sunSystem.addPlanet(planet: "Moon")
} catch {
    print("error")
    
}
