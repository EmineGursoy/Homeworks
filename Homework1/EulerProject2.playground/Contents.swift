import UIKit

var a = 0, b = 1, border = 4000000, sum = 0, result = 0

while b < border {
    sum = a + b
    a = b
    b = sum
    if b % 2 == 0 {
        result += b
    }
}
print(result)
