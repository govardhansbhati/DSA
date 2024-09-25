
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


var customStack = Stack<Int>()
customStack.push(element: 4)
print(customStack)

customStack.push(element: 8)
print(customStack)

customStack.push(element: 12)
print(customStack)

// Using peek method
print(customStack.peek()!)

// Using pop method
var x = customStack.pop()
print(x!)

x = customStack.pop()
print(x!)

