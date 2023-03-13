import UIKit

print("Ödev1:")
//Ödev1: Text icinde limitten az sayida tekrar eden harfleri ekrana yazdir

var text = "aaba kouq bux"
var letters = [Character]() //harf dizisi
var lettersToStay = [Character]() //kalmasi gereken harfler dizisi
var lettersToDelete = [Character]() //silinmesi gereken harfler dizisi
let limit = 3

let formattedText = text.replacingOccurrences(of: " ", with: "") // bütün bosluklar silinir
let length = formattedText.count
for letter in formattedText { //formattedText icindeki her harf, harf dizisinine aktarilir
    letters.append(letter)
}

for i in 0..<length { //text üzerinde gezilir
    let letter = letters[i]
    let addControl = lettersToStay.filter({ $0 == letter }).count < limit - 1 && !lettersToDelete.contains(letter) //lettersToStay dizisinde o harften limit-1den az sayida varsa ve lettersToDelete dizisi bu harfi icermiyorsa 1(true), öbür türlü false
    
    if addControl { //addControl true ise o andaki harfi lettersToStay dizisine ekle
        lettersToStay.append(letter)
    } else { //false ise o andaki harfi lettersToStay dizisinden sil ve lettersToDelete dizisine ekle
        lettersToStay.removeAll(where: { $0 == letter }) //kosula uyanlarin hepsi cikartiliyor
        lettersToDelete.append(letter)
    }
}
print(lettersToStay)




print("Ödev2:")
//Ödev2: Cumle icinde gecen her kelimenin kac defa tekrar ettigini hesapla

var sentence = "Merhaba nasilsiniz bugün hava güzel mi ben iyiyim siz nasilsiniz"

var editedSentence = sentence.lowercased() //bütün harfler kücük harfe cevrildi

var words = editedSentence.components(separatedBy: .whitespacesAndNewlines) //düzenlenmis metin icindeki bütün kelimeler bir diziye aktarildi

var wordRepetition: [String: Int] = [:] //kelimenin tekrar sayisini hesaplamak icin dictionary tanimlandi

for i in 0..<words.count { //words dizisi icinde gezilir
    let word = words[i] //dizinin i. indisindeki eleman word sabitine aktarildi
    
    var repetitionCount = wordRepetition[word] ?? 0 //repetitionsCont sabitine; aranan kelime dictionaryde ekliyse dictionarydeki degeri, degilse 0 aktarildi
    repetitionCount += 1 //tekrar sayisi 1 artirildi
    wordRepetition[word] = repetitionCount //wordRepetitions dictionarysinin word keyinin valuesuna repetitionsCount aktarildi
   
}
print(wordRepetition)




print("Ödev3:")
//Ödev 3 - Euler 4: 3 basamakli iki sayinin carpimindan olusan en büyük palindrom

var largestPalindrome = 0

for number1 in stride(from: 999, through: 100, by: -1) {
    for number2 in stride(from: number1, through: 100, by: -1) {
        var product: Int = number1 * number2 //carpim hesaplandi
        var productString = String(product) //stringe cevrildi
        var invertedProduct = String(productString.reversed()) //carpim ters cevrildi
        
        if productString == invertedProduct { //sayi palindromsa
            if product > largestPalindrome { //hesaplanan carpim largestPalindromedan büyükse
                largestPalindrome = product
            }
        }
    }
}

print(largestPalindrome)



/*
print("Ödev4:")
//Ödev 4 - Euler 5: 1den 20ye kadar kadar tüm sayilara kalansiz bölünebilen en kücük pozitif sayi

func isDivisible(number: Int) -> Bool { //parametre olarak alinan sayi 1den 20ye kadar tüm sayilara bölünebiliyorsa true, bölünemiyorsa false döner
    for j in 1...20 {
        if number % j != 0 {
            return false
        }
    }
    return true
}

var currentNumber = 1
while !isDivisible(number: currentNumber) { //isDivisible fonksiyonu true döndügü sürece sayi 1 arttirilir
    currentNumber += 1
}

print(isDivisible(number: currentNumber))
*/



print("Ödev5:")
//Ödev5 - Euler 6: Ilk 100 dogal sayinin kareleri toplami ile toplamin karesi arasindaki fark

var sumOfSquares = 0
var sum = 0
var squareOfSum = 0
var difference = 0

for i in 1...100 {
    sumOfSquares += i*i //karelerin toplami
    sum += i //toplam
}

squareOfSum = sum * sum
difference = squareOfSum - sumOfSquares

print("Difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is: \(difference)")
