import UIKit


print("ÖDEV1")
//Ödev1: Bir sayinin asal olup olmadigini bulan fonksiyon

var control: Bool = true //sayinin asal olup olmadigini kontrol etmek icin
func isPrime(number: Int) -> Bool {
    
    if (number == 0 || number == 1) { // sayi 0 veya 1 ise
        control = false
    } else { // sayi 0 veya 1 den farkli bir sayi ise
        for i in 2..<number { // 2den sayi-1'e kadar calisir
            if number % i == 0 { // sayi, 2den sayi-1'e kadar herhangi bir sayiya kalansiz bölünüyorsa
                control = false
                break
            }
        }
    }
    return control
}

if isPrime(number: 13) { //isPrime fonksiyonu true dönüyorsa
    print("Sayi asaldir")
} else { //false ise
    print("Sayi asal degildir")
}




print("ÖDEV2")
//Bir sinifta en az bir yazilim dilini bilenlerin sayisi 24, sadece swift bilenlerin sayisi 12, sadece kotlin bilenlerin sayisi 8 olduguna göre her iki dili bilen kisi sayisini hesaplayan fonksiyon

func getResult(swift: Int, kotlin: Int, both: Int) -> Int {
    let result = both - (swift+kotlin)
    return result
    
}

print("Sinifta iki dili bilen \(getResult(swift: 12, kotlin: 8, both: 24)) kisi vardir")




print("ÖDEV3")
//Fonksiyona parametre olarak verilen sayiya göre +- karakterlerini ekrana yazdiran bir fonksiyon (1 ise +, 2 ise +-, 3 ise +-+, ...)

func printCharacter(repetitionsNumber: Int) -> String {
    
    var result = ""

    for i in 0..<repetitionsNumber { //tekrar sayisi kadar karakter eklenmesi icin
        
        if i % 2 == 0 { //o andaki i cift ise
            result += "+" // resultin sonuna + ekle
        } else { // o andaki i tek ise
            result += "-" //resultin sonuna - ekle
        }
      
    }
 
    return result
}

print(printCharacter(repetitionsNumber: 5))




print("ÖDEV4")
//Fonksiyona parametre olarak verilen bir sayinin en büyük olacak sekilde 5 sayisini ilgili basamaga koyan fonksiyon

func findLargest(number: Int) -> Int {

    var newNumber = 0
    var numberString = String(number) //parametre olarak alinan sayi stringe cevrildi
    var numberCharacters = [Character]()
    var newNumberString = ""
    var isAdded = false //5in eklenip eklenmedigini kontrol etmek icin
    
    for num in numberString{ //stringe cevrilmis sayinin tüm basamaklari sirayla bir karakter dizisine aktarildi
        numberCharacters.append(num)
    }
 
    for i in 0..<numberString.count { //sayinin tüm basamaklari üzerinde gezilir
        let num = Int(String(numberCharacters[i]))! //karakter dizisinde i. indisteki eleman integara cevrilip num a aktarildi
        
        if num < 5 { //Kontrol ettigimiz basamaktaki sayi 5ten kücükse o andaki indise (kontrol edilen sayinin onune) 5 eklenir
            numberCharacters.insert("5", at: i)
            isAdded = true //sayinin herhangi bir basamagi 5ten kücükse isAdded true olur
            break
        }
    }
 
    if !(isAdded) { //isAdded false ise (sadece bütün sayilar 5ten büyükse isAdded false)
        numberCharacters.append("5") //en sona eklenir
    }
  
    for num in 0..<numberCharacters.count { //karakter arrayinin tüm elemanlari sirayla newNumberStringe eklenir
        newNumberString.append(numberCharacters[num])
    }
    
    newNumber = Int(newNumberString)! //string sayi integera cevrildi
    return newNumber
}
print("Sonuc: \(findLargest(number: 661799))")

