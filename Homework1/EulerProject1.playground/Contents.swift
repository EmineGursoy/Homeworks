import UIKit

//1000in altindaki 3e veya 5e tam bölünebilen sayilarin toplami

var x = 0
var sum = 0
while x<1000 {
    if x % 3 == 0 || x % 5 == 0 {
       sum += x
    }
    x += 1
}
print(sum)
