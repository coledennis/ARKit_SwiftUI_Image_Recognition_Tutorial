//
//  ARModel.swift
//  ARKit_SwiftUI_Image_Recognition_Tutorial
//
//  Created by Cole Dennis on 10/5/22.
//

import Foundation
import RealityKit

struct ARModel {
    private(set) var arView : ARView
    
    init() {
        arView = ARView(frame: .zero)
    }
    
}
