//
//  ViewController.swift
//  GravitosOSX
//
//  Created by Dimas A. Prabowo on 16/04/21.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.skView {
            // Load the SKScene from 'GameScene.sks'
//            if let scene = GameScene(fileNamed: "GameScene") {
//
//            }
//            let scene = GameScene(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
            
            guard let scene = GameScene(fileNamed: "GameScene") else { return }
            
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            
            // Present the scene
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

