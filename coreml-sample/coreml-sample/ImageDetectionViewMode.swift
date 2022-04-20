//
//  ImageDetectionViewMode.swift
//  coreml
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI
import Combine

class ImageDetectionViewModel: ObservableObject {
    
    var name: String = ""
    var manager: ImageDetectionManager
    
    @Published var predictionLabel: String = ""
    
    init(manager: ImageDetectionManager) {
        self.manager = manager
    }
    
    func detect(_ name: String) {
        let image = UIImage(named: name)
        
        // resize image for model input
        guard let scaledImage = image?.resizeImage(
            targetSize: CGSize(width: 227, height: 227)
        ) else {
            fatalError("Unable to resize the image!")
        }
        
        // model detect image
        if let prediction = manager.detect(scaledImage) {
            
            
            // update prediction label
            predictionLabel = prediction ?? "Error"
        }
    }
    
    func detectCatDog(_ name: String) {
        let image = UIImage(named: name)
        
        // resize image for model input
        guard let scaledImage = image?.resizeImage(
            targetSize: CGSize(width: 299, height: 299)
        ) else {
            fatalError("Unable to resize the image!")
        }
        
        // model detect image
        if let prediction = manager.detectCatDog(scaledImage) {
            
            
            // update prediction label
            predictionLabel = prediction ?? "Error"
        }
    }
    
}
