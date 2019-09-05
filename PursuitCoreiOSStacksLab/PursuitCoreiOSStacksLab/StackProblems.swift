import Foundation

//Problem One:
//Find the largest integer in a Stack of Ints

func largest(stack: Stack<Int>) -> Int {
    var largestInt = stack.pop()
    while stack.isEmpty() != true {
        let currentInt = stack.pop()
        if currentInt! > largestInt! {
            largestInt = currentInt
        }
    }
    return largestInt!
}

//Problem Two:
//Find the sum of a Stack of Ints

func sum(stack: Stack<Int>) -> Int {
    var sum = 0
    while stack.isEmpty() != true {
        sum += stack.pop()!
    }
    return sum
}

//Problem Three:
//Reverse a Stack without using an Array

//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reverse<T>(stack: Stack<T>) -> Stack<T> {
    let reversedStack = Stack<T>()
    while stack.isEmpty() != true {
        reversedStack.push(element: stack.pop()!)
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal

func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    while stackOne.isEmpty() != true && stackTwo.isEmpty() != true {
        if stackOne.peek() == stackTwo.peek() {
            stackOne.pop()
            stackTwo.pop()
        } else {
            return false
        }
    }
    if stackOne.isEmpty() != true || stackTwo.isEmpty() != true {
        return false
    } else {
        return true
    }
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack

func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    let alteredStack = Stack<T>()
    alteredStack.push(element: newElement)
    let reversedStack = reverse(stack: stack)
    while reversedStack.isEmpty() != true {
        alteredStack.push(element: reversedStack.pop()!)
    }
    return alteredStack
}

//Problem Six:
//Determine if the parentheses are balanced in a given String

//Sample input: ((()))
//Sample output: true

//Sample input: ((())
//Sample output: false

//Sample input: (()((())()))
//Sample output: false


func isBalanced(str: String) -> Bool {
    let onlyParentheses = str.filter { $0 == "(" || $0 == ")" }
    let numberOfParentheses = onlyParentheses.count
    if numberOfParentheses % 2 != 0 {
        return false
    }
    let stack = Stack<Character>()
    for element in onlyParentheses {
        stack.push(element: element)
    }
    for index in 0..<numberOfParentheses {
        let currentElement = stack.pop()
        if index < (numberOfParentheses / 2) {
            if currentElement != ")" {
                return false
            }
        } else {
            if currentElement != "(" {
                return false
            }
        }
    }
    return true
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary

func convertToBinary(_ num: Int) -> String {
    
    return ""
}

