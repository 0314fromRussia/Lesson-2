import Foundation

protocol Queue {
    
    var quantity: Int {get set}
    
}

class PeopleInQueue: Queue {
    
    var quantity: Int
    
    var positionFromStart: Int
    
    init(position: Int, quantity: Int) {
        self.positionFromStart = position
        self.quantity = quantity
    }
}

class SpeedQueue: Queue {
    
    var quantity: Int
    var speed: Int
    
    init(speed: Int, quantity: Int) {
        self.speed = speed
        self.quantity = quantity
    }
}

struct MyQueue<T: Queue> {
    
    private var elements: [T] = []
    mutating func push(_ items: T) {
        elements.append(items)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    
    subscript (element: Int) -> T? {
        if element > elements.count - 1 || element < 0 {
            return nil
        }else{
            return elements[element]
        }
    }
}
