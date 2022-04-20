//
//  ContentView.swift
//  coreml
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    
    let images = [
        "cat", "bacon", "cake", "frog", "soccerball", "tree"
    ]
    
    @State var selectedImage = ""
    
    @ObservedObject private var imageDectectionVM: ImageDetectionViewModel
    private var imageDetectionManager: ImageDetectionManager
    
    init() {
        imageDetectionManager = ImageDetectionManager()
        imageDectectionVM = ImageDetectionViewModel(manager: imageDetectionManager)
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(images, id: \.self) { name in
                            Image(name)
                                .resizable()
                                .frame(width: 300, height: 300, alignment: .center)
                                .padding()
                                .onTapGesture {
                                    selectedImage = name
                                }
                                .border(Color.black, width:
                                            selectedImage == name ? 10: 0)
                        }
                    }
                }
                
                Button {
                    imageDectectionVM.detect(selectedImage)
//                    imageDectectionVM.detectCatDog(selectedImage)
                } label: {
                    Text("Detect")
                        .padding()
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                Text("Prediction: \(imageDectectionVM.predictionLabel)")

            }
        }.navigationTitle("Core ML")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
