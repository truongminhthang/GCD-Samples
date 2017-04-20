//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"
PlaygroundPage.current.needsIndefiniteExecution = true


func simpleQueues() {
    let serialQueue = DispatchQueue(label: "com.bigZero.GCDSamples")
    serialQueue.sync {
        for i in 0..<5 {
            print("🔵 \(i) -\( Thread.current))")
        }
    }
    
    serialQueue.async {
        for i in 0..<5 {
            print("⚾️ \(i) - \(Thread.current))")
        }
    }
    
    for i in 0..<10 {
        print("❤️ \(i) - \(Thread.current)")
    }
}

//simpleQueues()



//    var inactiveQueue: DispatchQueue!
func concurrentQueues() {
    let concurrentQueue = DispatchQueue.global()
    concurrentQueue.async {
        for i in 0..<10 {
            print("🔵 \(i) - \(Thread.current)")
        }
    }
    
    concurrentQueue.sync {
        for i in 0..<10 {
            print("❤️ \(i)- \(Thread.current)")
        }
    }
    
    concurrentQueue.async {
        for i in 0..<10 {
            print("⚾️ \(i)- \(Thread.current)")
        }
    }
}

concurrentQueues()

func queueWithDelay() {
    
}


func fetchImage() {
    
}


func useWorkItem() {
    
}



PlaygroundPage.current.finishExecution()