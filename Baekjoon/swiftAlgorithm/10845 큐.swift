//
//  10845 큐.swift
//  swiftAlgorithm
//
//  Created by 박시현 on 2/19/24.
//

import Foundation

struct Queue<T> {
    
    // queue
    private var queue: [T?] = []
    
    // removed Element index pointer
    private var head: Int = 0
    
    // Number of elements in cureent Queue
    public var count: Int {
        return queue.count - head
    }
    
    // Check queue is Empty?
    public var isEmpty: Bool {
        return queue.isEmpty
    }
    
    // Enqueue
    public mutating func enqueue(_ ele: T) {
        queue.append(ele)
    }
    
    // Dequeue
    public mutating func dequeue() -> T? {
        guard head < queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head >= 1 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
    
    // First Ele
    public var first: T? {
        return queue.first as? T ?? nil
    }
    
    // Last Ele
    public var back: T? {
        return queue.last as? T ?? nil
    }
    
}

// input
let n = Int(readLine()!)!

var q = Queue<Int>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "push":
        q.enqueue(Int(input[1])!)
    case "pop":
        if q.count == 0 {
            print("-1")
        } else {
            print(q.dequeue()!)
        }
    case "size":
        print(q.count)
    case "empty":
        if q.count == 0 {
            print("1")
        } else {
            print("0")
        }
    case "front":
        if q.count == 0 {
            print("-1")
        } else {
            print(q.first!)
        }
    case "back":
        if q.count == 0 {
            print("-1")
        } else {
            print(q.back!)
        }
    default:
        break
    }
}
