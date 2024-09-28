import Foundation

public struct Queue<T> {
    private var data: [T] = []
    //Enqueue method
    public mutating func enqueue(element: T) {
        data.append(element)
    }
    
    //Dequeue method
    public mutating func dequeue() -> T? {
        return data.removeFirst()
    }
    //Peek method
    public func peek() -> T? {
        return data.first
    }
    // Clear
    public mutating func clear() {
        data.removeAll()
    }
    //Count
    public var count: Int {
        return data.count
    }
    //Capacity will be used for isFull() method
    public var capacity: Int {
        get {
            return data.capacity
        }
        set {
            data.reserveCapacity(newValue)
        }
    }
    //isFull method
    public func isFull() -> Bool {
        return count == data.capacity
    }
    
    //isEmpty() method
    public func isEmpty() -> Bool { return data.isEmpty
    }
}

extension Queue: CustomStringConvertible {
    public var description: String {
        return data.description
    }
}



var cusTomQueue = Queue<Int>()
cusTomQueue.enqueue(element: 1)
cusTomQueue.enqueue(element: 2)
cusTomQueue.enqueue(element: 3)
Swift.print(cusTomQueue)

print(cusTomQueue.dequeue())
print(cusTomQueue.peek())
