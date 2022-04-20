//
//  StarView.swift
//  swiftui-in-uikit
//
//  Created by Patrick Fuller on 3/7/22.
//

import Foundation
import UIKit

class StarView: UIView {
    
    var selected: Bool = false {
        didSet{
            self.imageView.image = UIImage(systemName: selected ? "star.fill" : "star")?
                .withTintColor(.systemMint, renderingMode: .alwaysOriginal)
        }
    }
    
    private var imageView: UIImageView!
    
    init() {
        let frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        self.imageView = UIImageView(frame: self.frame)
        self.imageView.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(tapped))
        self.imageView.addGestureRecognizer(tapGestureRecognizer)
        self.addSubview(imageView)
    }
    
    @objc private func tapped() {
        self.selected.toggle()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
}
