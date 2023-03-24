//
//  Models.swift
//  Homework5
//
//  Created by Emine Sinem on 24.03.2023.
//

import Foundation

struct Player {
    var nickname: String
    var points: Int = 0
}



struct Cannon { //topatar
    var teta: Double = 0 //yerlesim acisi
    var v: Double = 0 //firlatma hizi
}



struct Bottle {
    var d: Double = 0 //sisenin 0 noktasina olan uzakligi
    var delta: Double = 1  //Double.random(in: 0.1 ..< 1.0) //sisenin büyüklügü
    var isStanding: Bool = true //sise dik durumda
}



class Game {
    var player: Player // Player structindan bir property tanimlandi
    var cannon: Cannon // Cannon structindan bir property tanimlandi
    var bottle: Bottle // Bottle structindan bir property tanimlandi
    
    init(player: Player, cannon: Cannon, bottle: Bottle) { //Game classi icin init fonksiyonu tanimlandi
        self.player = player
        self.cannon = cannon
        self.bottle = bottle
    }
    
    func calculateDistance() -> Double { //menzil hesaplanir
        var r = 0.0 //r:menzil
        let g = 10.0
        r = cannon.v * cannon.v * sin(Double(2 * cannon.teta)) / g
        return r
    }
    
    func play() {
        let distance = calculateDistance() //menzil
        
        let didHitBottle = bottle.d - bottle.delta <= distance && bottle.d + bottle.delta >= distance //verilen formüle göre sisenin vurulup vurulmadigi hesaplandi
        
        if didHitBottle { //sise vurulduysa
            bottle.isStanding = false
            player.points += 1
        } else { //sise vurulmadiysa
            bottle.isStanding = true
        }
    }
}

