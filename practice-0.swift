func addTwoNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func addTwoNumbersAsString(num1: Int, num2: Int) -> String {
    return String(num1 + num2)
}

func sliceFibonacci(startNum:Int, fibonacciLength: Int) -> [Int] {
    var fibonacci = [Int]()
    var currentNum = startNum
    var nextNum = startNum + 1
    var i = 0
    while i < fibonacciLength {
        fibonacci.append(currentNum)
        currentNum = nextNum
        nextNum = currentNum + fibonacci[i]
        i = i + 1
    }
    print("fibonacci slice: \(fibonacci)")
    return fibonacci
}

sliceFibonacci(startNum: 5, fibonacciLength: 10)