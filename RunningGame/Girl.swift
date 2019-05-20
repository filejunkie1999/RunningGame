//
//  Girl.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 4/11/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import Foundation
import SpriteKit

class Girl{
    var sprite = SKSpriteNode(imageNamed: "girl")
    var phys : SKPhysicsBody?
    
    
    
    init() {
        sprite.position = CGPoint(x: 0,
            y: 10)
             sprite.size = CGSize(width: 100, height: 200)
        phys =
            SKPhysicsBody(rectangleOf:
                sprite.size, center:
        sprite.anchorPoint)
    phys?.affectedByGravity = true
    phys?.mass = 5
        sprite.physicsBody = phys
        
    }
    
    func jump() {
        phys?.velocity = CGVector(dx: 0, dy: 0)
        phys?.applyImpulse(CGVector(dx: 0, dy: 5050))
            print("JUMP")
    }
    
}
