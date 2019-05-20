//
//  Cactus.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 5/15/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import Foundation
import SpriteKit


class Cactus {
    var sprite = SKSpriteNode(imageNamed: "cactus")
    var phys : SKPhysicsBody
    var speed = -5
    
    init() {
        sprite.position = CGPoint(x: 0, y: 0)
       
        sprite.size = CGSize(width: 80.0, height:60.0)
        sprite.position = CGPoint(x: 1525, y: 230)
        phys = SKPhysicsBody(rectangleOf: sprite.size, center: sprite.anchorPoint)
        phys.isDynamic = false
        phys.affectedByGravity = true
        sprite.physicsBody = phys
    }
    
    func move() {
        sprite.position = CGPoint(x: sprite.position.x + CGFloat(speed), y: sprite.position.y)
        if sprite.position.x < -600 {
           sprite.position.x += 1200
        }
        sprite.position.x -= 10
        
        if sprite.position.x < -400 {
            sprite.position.x = 400 + CGFloat.random(in: 100...600)
        let yChange = CGFloat.random(in: -200...200)
            sprite.position.y += yChange
        
        }
    
    

    


}
}
