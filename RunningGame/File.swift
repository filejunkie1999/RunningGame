//0
//  File.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 5/3/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import Foundation
import SpriteKit

class RealBackaground{
    var sprite = SKSpriteNode(imageNamed: "RealBackground")
    var phys : SKPhysicsBody?
    
    
    
    init() {
        sprite.position = CGPoint(x: 0,
                                  y: 100 )
        sprite.zPosition = -1000
        

    }
    
    
    
}
