import UIKit


//Ödev1: Euler Project 7: İlk altı asal sayıyı listeleyerek: 2, 3, 5, 7, 11 ve 13, 6. asalın 13 olduğunu görebiliriz. 10 001'inci asal sayı nedir?

var primeNumbers: [Int] = []
var count: Int = 0
var searchingNumber: Int = 2
var isPrime = true

func findPrime(index: Int) -> Int {
    
    while count < index+1 {
        isPrime = true
        for i in 2..<searchingNumber {
            if searchingNumber % i == 0 {
                isPrime = false
                break
            }
        }
        if isPrime {
            primeNumbers.append(searchingNumber)
            count += 1
        }
        searchingNumber += 1
    }
    return searchingNumber
}

print("10001. asal sayi \(findPrime(index: 10000))'dir")





//Ödev3: Euler Project 9: Bir Pisagor üçlüsü, a < b < c olmak üzere üç doğal sayıdan oluşan bir kümedir; a^2 + b^2 = c^2 Örneğin, 3^2 + 4^2 = 9 + 16 = 25 = 5^2. a + b + c = 1000 olan tam olarak bir Pisagor üçlüsü vardır. abc ürününü bulun.
var max = 500
var result_ab = 0
var result_c = 0
var sum = 0

for a in 1..<max {
    for b in a+1..<max+1 {
        for c in b+1..<max+2 {
            result_ab = a*a + b*b
            result_c = c*c
            
            if result_ab == result_c {
                sum = a+b+c
                if sum == 1000 {
                    print(a,b,c)
                }
            }
            
        }
    }
}
  

//Ödev4: Leetcode 13. Soru: Roma rakamlarini tamsayiya cevirme
func convertRoman(number: Int) -> String {
let decimals = [1000, 500, 100, 50, 10, 5, 1]
let numerals = ["M", "D", "C", "L",  "X", "V", "I"]

var result = ""
var num = number

while num > 0 {
    for i in 0..<decimals.count {
        if num - decimals[i] >= 0 {
            num -= decimals[i]
            result += numerals[i]
            break
        }
    }
}
return result
}




//Ödev5: Leetcode 14. Soru: En Uzun Ortak Önek - Bir String dizisi arasında en uzun ortak önek dizisini bulan bir işlev yazın. Ortak bir önek yoksa boş bir "" dizesi döndürün.

var longestPrefix = ""
var strs = ["flower","flow","flight"]
var first = strs[0]
let str = ""

func getStrslen(strs: [String]) -> Int {
    var sum = 0
    for str in strs{
        sum += str.count
    }
    return sum
}

func longestCommonPrefix(_ strs: [String]) -> String {
    guard let firstString = strs.first else {
        return ""
    }
    
    var strs_len = getStrslen(strs: strs)
    
    if (!(strs_len >= 0 && strs_len <= 200)){
        return ""
    }
    
    var prefix = firstString
    for str in strs {
        
        var str_len = str.count
        if (str_len >= 0 && str_len <= 200){
            
            while !str.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
                if prefix.isEmpty {
                    return ""
                }
            }
            
        }
    }
    return prefix
}

print(longestCommonPrefix(strs))

 
 
