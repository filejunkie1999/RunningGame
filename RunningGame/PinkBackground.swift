//
//  RealBackground.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 5/1/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.

import Foundation
import SpriteKit

class RealBackground{
    var sprite = SKSpriteNode(imageNamed: "RealBackground")
    var phys : SKPhysicsBody?
    
    
    
    init() {
        sprite.position = CGPoint(x: 0,
                                  y: -700)
        sprite.zPosition = -1
         sprite.size = CGSize(width: 100, height: 50)
        
        phys = SKPhysicsBody(rectangleOf:
                sprite.size, center:
               sprite.anchorPoint)
        phys?.affectedByGravity = false
        phys?.isDynamic = false
       phys?.mass = 5
        sprite.physicsBody = phys
   

    }
    
    
    
}
