import UIKit

func printFibonacci(upto n: Int) -> [Int] {
    var fibonacciArr = [Int]()
    if n <= 0 {
        return fibonacciArr
    } else if n == 1 {
        fibonacciArr.append(0)
    } else {
        fibonacciArr = [0, 1]
        for _ in 2..<n {
            let num = fibonacciArr[fibonacciArr.count - 1] + fibonacciArr[fibonacciArr.count - 2]
            fibonacciArr.append(num)
        }
    }
    return fibonacciArr
}

//print("Fibonacci ->", printFibonacci(upto: 20))


func checkPrime(_ number: Int) -> Bool {
    if number < 2 {
        return false
    }
    for i in 2..<number {
            if number % i == 0 {
                return false
            }
        }
    return true
}

//print("Prime -> ", checkPrime(19))

func isPalindrome(_ str: String) -> Bool {
    let palindromeString = str.lowercased()
    return palindromeString == String(palindromeString.reversed())
}

//print("Palindrome  -> ",isPalindrome("Madam"))


func printFactorial(_ number: Int) -> Int {
    var range = (1...number).reversed()
    var result = 1
    for i in range {
        result = result * i
    }
    return result
}

//print(printFactorial(6))


func printArmstrongNumber(_ number: Int) -> Bool {
    var temp = number
    var sum = 0
    var i = 0
    while temp > 0 {
        i = temp % 10
        sum += (i * i * i)
        temp /= 10
    }
    return if (sum == number) { true } else { false }
}

//print(printArmstrongNumber(371))

func printSumOfDigits(_ number: Int) -> Int {
    var result = 0
    var remaining = number
    while remaining > 0 {
        let digit = remaining % 10
        result += digit
        remaining /= 10
    }
    return result
}

//print(printSumOfDigits(1101))

func printReverseNumber(_ number: Int) -> Int {
    var result = 0
    var remainingNumber = number
    
    while remainingNumber != 0 {
        let digit = remainingNumber % 10
        result = result * 10 + digit
        remainingNumber /= 10
    }
    
    return result
}

//print(printReverseNumber(1032))

func printSwapNumbers(_ fisrt: inout Int, _ second: inout Int) -> (Int, Int) {
    let temp = fisrt
    fisrt = second
    second = temp
    return (fisrt, second)
}

//var first = 32
//var second = 43
//
//print(printSwapNumbers(&first, &second))

func printNumberToBinary(_ decimal: Int) -> String {
    
    var decimalNumber = decimal
    var binaryString = ""
    
    while decimalNumber > 0 {
        let remainder = decimalNumber % 2
        binaryString = String(remainder) + binaryString
        decimalNumber /= 2
    }
    
    return binaryString.isEmpty ? "0" : binaryString
}

//print(printNumberToBinary(10))

func multiplyMatrix(_ matrix1: [[Int]], _ matrix2: [[Int]]) -> [[Int]]? {
    guard matrix1[0].count == matrix2.count else {
        return nil
    }
    
    let resultRows = matrix1.count
    let resultColumns = matrix2[0].count
    var result = Array(repeating: Array(repeating: 0, count: resultColumns), count: resultRows)
    
    for i in 0..<resultRows {
        for j in 0..<resultColumns {
            var sum = 0
            for k in 0..<matrix2.count {
                sum += matrix1[i][k] * matrix2[k][j]
            }
            result[i][j] = sum
        }
    }
    
    return result
}

// Example usage
//let matrix1 = [[1, 2, 3],
//               [4, 5, 6]]
//let matrix2 = [[7, 8],
//               [9, 10],
//               [11, 12]]
//
//if let result = multiplyMatrix(matrix1, matrix2) {
//    for row in result {
//        print(row)
//    }
//}


enum Weekday {
    case monday(String), tuesday, wednesday, thursday, friday
    
    var title: String {
        switch self {
        case .monday(let value): return value
        case .tuesday: return ""
        case .wednesday: return ""
        case .thursday: return ""
        case .friday: return ""
        }
    }
}

let weekend = Weekday.monday("Monday")

print(weekend.title)
