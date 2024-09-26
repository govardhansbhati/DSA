
import Foundation

public struct Stack<T> {
    private var items: [T] = []
    
    
    // Push Method
    mutating func push(element: T) {
        items.append(element)
    }
    
    // Pop method
    mutating func pop() -> T? {
        return items.popLast()
    }
    
    // Peek method
    func peek() -> T? {
        return items.last
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return items.description
    }
}


var customStack = Stack<Int>()
customStack.push(element: 4)
Swift.print(customStack)

customStack.push(element: 8)
Swift.print(customStack)

customStack.push(element: 12)
Swift.print(customStack)

Swift.print(customStack.description)

// Using peek method
Swift.print(customStack.peek()!)

// Using pop method
var x = customStack.pop()
Swift.print(x!)

x = customStack.pop()
Swift.print(x!)

