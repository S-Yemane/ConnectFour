//
//  Player.swift
//  ConnectFour
//
//  Created by CSUFTitan on 5/11/20.
//  Copyright © 2020 CSUFTitan. All rights reserved.
//

import UIKit
import GameplayKit

class Player: NSObject, GKGameModelPlayer {
    var chip: Board.ChipColor
    var color: UIColor
    var name: String
    var playerId: Int
    
    var opponent: Player {
        if chip == .red {
            return Player.allPlayers[1]
        } else {
            return Player.allPlayers[0]
        }
    }
    
    static var allPlayers = [Player(chip: .red), Player(chip: .black)]
    
    init(chip: Board.ChipColor) {
        self.chip = chip
        self.playerId = chip.rawValue
        
        if chip == .red {
            color = .red
            name = "Red"
        } else {
            color = .black
            name = "Black"
        }
        
        super.init()
    }
}
