//
//  ARViewModel.swift
//  ARKit_SwiftUI_Image_Recognition_Tutorial
//
//  Created by Cole Dennis on 10/5/22.
//

import Foundation
import RealityKit


class ARViewModel: ObservableObject {
    @Published private var model : ARModel = ARModel()
    
    var arView : ARView {
        model.arView
    }
    
}
