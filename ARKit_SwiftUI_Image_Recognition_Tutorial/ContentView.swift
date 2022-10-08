//
//  ContentView.swift
//  ARKit_SwiftUI_Image_Recognition_Tutorial
//
//  Created by Cole Dennis on 10/5/22.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @ObservedObject var arViewModel : ARViewModel = ARViewModel()
    var body: some View {
        ZStack {
            ARViewContainer(arViewModel: arViewModel).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Is Image Recognized?")
                switch arViewModel.imageRecognizedVar {
                case false: Text("No").foregroundColor(.red)
                case true: Text("Yes").foregroundColor(.green)
                }
            }.font(.title)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(.regularMaterial))
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    var arViewModel: ARViewModel
    
    func makeUIView(context: Context) -> ARView {
        arViewModel.startSessionDelegate()
        return arViewModel.arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
