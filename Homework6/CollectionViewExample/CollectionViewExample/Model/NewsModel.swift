//
//  NewsModel.swift
//  CollectionViewExample
//
//  Created by Emine Sinem on 26.03.2023.
//

import Foundation
import UIKit

struct NewsModel {
    let newsImage: UIImage
    let title: String
    let detail: String
}


let news: [NewsModel] = [
    NewsModel(newsImage: UIImage(named: "news1")!, title: "Meteoroloji'den hava durumu uyarısı! Kar yağışı geliyor", detail: "Önümüzdeki hafta başından itibaren hava sıcaklığı 10 derece birden düşecek, yurt geneli yağışlı havanın etkisi altında olacak."),
    NewsModel(newsImage: UIImage(named: "news2")!, title: "İran’da 4,2 ve 4,7 büyüklüğünde iki deprem", detail: "İran Sismoloji Merkezi, merkez üssü Fars eyaletinin Heşt kentinde yerel saatle 21.43’te 4,2 büyüklüğünde ve 10 kilometre derinlikte deprem meydana geldiğini bildirdi."),
    NewsModel(newsImage: UIImage(named: "news3")!, title: "Togg'da çekiliş süresi uzadı ve teslim edilecek araç adedi yükseltildi", detail: "Togg son yaptığı açıklamayla 12 bin olan teslim edilecek araç adedini 20 bine çıkarırken ön sipariş için son günün 27 Mart olduğunu çekişin ise 29 Mart'ta yapılacağını açıkladı.")
]


