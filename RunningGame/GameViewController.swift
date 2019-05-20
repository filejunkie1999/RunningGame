//
//  GameViewController.swift
//  RunningGame
//
//  Created by Aidan Ragasa on 4/11/19.
//  Copyright © 2019 Aidan Ragasa. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var gameScene:GameScene?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                gameScene = scene as! GameScene
                gameScene!.controller = self
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
       
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
    
    }
    func gameOver() {
        gameScene!.removeFromParent()
         if let view = self.view as! SKView? {
            view.presentScene(nil)
        }
        self.dismiss(animated: true, completion: nil)
    }
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
