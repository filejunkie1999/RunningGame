//
//  grass.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 5/9/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import Foundation
import SpriteKit

class Grass {
    var sprite = SKSpriteNode(imageNamed: "ground")
    var sprite2 = SKSpriteNode(imageNamed: "ground")
    var sprite3 = SKSpriteNode(imageNamed: "ground")
    var phys : SKPhysicsBody
    var speed = -100
    
    init() {
        sprite.position = CGPoint(x: 0, y: 0)
        sprite2.position = CGPoint(x: 1000, y: 20)
        sprite3.position = CGPoint(x: 2000, y: 40)
        sprite.size = CGSize(width: 1000.0, height:50.0)
        sprite2.size = CGSize(width: 1000.0, height:50.0)
        sprite3.size = CGSize(width: 1000.0, height:50.0)
        phys = SKPhysicsBody(edgeFrom: CGPoint(x: -1000, y: -30), to:CGPoint(x: 1000, y: -30))
        phys.isDynamic = false
        phys.affectedByGravity = false
        sprite.physicsBody = phys
    }
    
    func move() {
        sprite.position = CGPoint(x: sprite.position.x + CGFloat(speed), y: sprite.position.y)
        sprite.position = CGPoint(x: sprite.position.x + CGFloat(speed), y: sprite.position.y)
        sprite.position = CGPoint(x: sprite.position.x + CGFloat(speed), y: sprite.position.y)
        
        if sprite.position.x < -600 {
            sprite.position.x += 1200
        }
        
        if sprite2.position.x < -400 {
           sprite.position.x += 1200
        }
        
        if sprite3.position.x < -400 {
           sprite.position.x += 1200
        }
    }
    
    
}
