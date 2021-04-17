//
//  Category.swift
//  Gravitos
//
//  Created by Dimas A. Prabowo on 15/04/21.
//

import Foundation
import SpriteKit

struct ScreenSize {
    static let sizeEdge = 20
    static let height   = 480
    static let width    = 800
}

struct Mass {
    static let normal   : CGFloat = 5
    static let heavy    : CGFloat = 10
    static let box      : CGFloat = 40
    static let item     : CGFloat = 10
}

protocol Player: SKSpriteNode{
    func moveLeft()
    func moveRight()
    func moveUp()
    func moveDown()
}

struct Levels{
    static let initial = 0
    static let level1  = 1
    static let level2  = 2
    static let level3  = 3
}

struct PhysicCategory{
    static let platform     : UInt32 = 0b1
    static let lava         : UInt32 = 0b10
    static let bigger       : UInt32 = 0b100
    static let door         : UInt32 = 0b1000
    static let smaller      : UInt32 = 0b10000
    static let key          : UInt32 = 0b100000
    static let mainPlayer   : UInt32 = 0b1000000
    static let light        : UInt32 = 0b10000000
}

enum GameState: Int{
    case initial = 0, playing, nextLevel, restart, gameOver
}
