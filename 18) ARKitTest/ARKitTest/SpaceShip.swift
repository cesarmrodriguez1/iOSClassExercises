//
//  SpaceShip.swift
//  ARKitTest
//
//  Created by Mac on 02/06/22.
//

import ARKit

class SpaceShip: SCNNode {
    
    func loadModel() {
        
        guard let virtualObjectScene = SCNScene(named: "ship.scn") else { return}
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes{
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }
}

