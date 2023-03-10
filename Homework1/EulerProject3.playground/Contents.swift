import UIKit

var number = 13195, divider = 2
var dividing = number
var multipliers = [Int]()
var biggestPrimeFactor = 0

while divider < number {
    
    if dividing % divider == 0 {
        
        multipliers.append(divider)
        dividing /= divider
       
    }
    
    else {
        
        divider += 1
        
    }
    
}

biggestPrimeFactor = multipliers.last!
print(biggestPrimeFactor)

