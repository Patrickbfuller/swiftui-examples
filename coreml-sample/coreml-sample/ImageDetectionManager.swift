//
//  ImageDetectionManager.swift
//  coreml
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI
import CoreML

class ImageDetectionManager {
    
    let model: SqueezeNetFP16?
    let catmodel: catdog_v_0_1
    
    init() {
        model = try? SqueezeNetFP16(configuration: MLModelConfiguration())
        catmodel =  catdog_v_0_1()
    }
    
    func detect(_ image: UIImage) -> String? {

        guard let pixelBuffer = image.toCVPixelBuffer(),
              let prediction = try? model?.prediction(image: pixelBuffer) else {
                  return nil
              }
        print(CVPixelBufferGetWidth(pixelBuffer))
        print(CVPixelBufferGetHeight(pixelBuffer))
        return prediction.classLabel
    }
    
    func detectCatDog(_ image: UIImage) -> String? {

        guard let pixelBuffer = image.toCVPixelBuffer(),
              let prediction = try? catmodel.prediction(image: pixelBuffer) else {
                  return nil
              }
        return prediction.classLabel
    }
    
    
    
}
