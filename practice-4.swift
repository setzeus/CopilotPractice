// Combine Tutorial
// Practicing with Combine + SwiftUI

import SwiftUI
import Combine

// Just Publisher + Assign Subscriber
// Just publisher is a publisher that emits a single value & immediately finishes.
// Assign subscriber is a subscriber that assigns received values to a property on an object. No value manipulation is done, just assigning.
class TestClassAssign: ObservableObject {
    let intJustPublisher = Just(1)
    let stringJustPublisher = Just("Hello World")

    var someNumber: Int = 0

    init() {
        intJustPublisher.assign(to: \.someNumber, on: self).cancel()
        print(someNumber)
    }
}
let testClassAssign = TestClassAssign()

// Just Publisher + Sink Subscriber
// Sink subscriber is a subscriber that receives values & provides a closure to handle much more complex value manipulation.
class TestClassSink: ObservableObject {
    let intJustPublisher = Just(1)
    let stringJustPublisher = Just("Hello World")

    var someNumber: Int = 0

    init() {
        intJustPublisher.sink { value in
            self.someNumber = value*20
        }.cancel()
        print(someNumber)
    }
}
let testClassSink = TestClassSink()

// The input type of a subcriber has to match the output type of the publisher.
// However sometimes we want to transform the output of a publisher sending it on to a subscriber - this is where operators come in.