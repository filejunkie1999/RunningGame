//
//  GameScene.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 4/11/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var girl = Girl()
    var realBackground = RealBackground()
    var grass = Grass()
    var cactus = Cactus()
    var time = 0
    var controller : GameViewController?
    override func didMove(to view: SKView) {
        self.addChild(girl.sprite)
        self.addChild(realBackground.sprite)
        self.addChild(grass.sprite)
        self.addChild(cactus.sprite)
        print("new scene")
        
        
    }

    
    func touchDown(atPoint pos : CGPoint) { 
      print("touch")
        if grass.phys.allContactedBodies().contains(girl.phys!) {
            girl.jump()
        }

        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
      
    }
    
    func touchUp(atPoint pos : CGPoint) {
   
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        if girl.phys!.allContactedBodies().contains(cactus.phys) {
            controller?.gameOver()
        }
        grass.move()
        cactus.move()
    
     
    }
}
