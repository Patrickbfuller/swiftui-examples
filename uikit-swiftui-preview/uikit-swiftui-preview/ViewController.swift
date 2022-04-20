//
//  ViewController.swift
//  uikit-swiftui-preview
//
//  Created by Patrick Fuller on 3/8/22.
//


import UIKit

class ViewController: UIViewController {
    
    private let label: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "hello"
        view.textColor = .black
        return view
    }()
    
    override func loadView() {
        self.view = UIView()
        self.view.backgroundColor = .white
        self.setupSubviews()
    }

    private func setupSubviews() {
        self.setupLabel()
    }
    
    private func setupLabel() {
        self.view.addSubview(self.label)
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}

#if DEBUG

import SwiftUI
private struct ViewControllerRepresentable: UIViewControllerRepresentable {
    let viewController = UIViewController()
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewController
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}

struct ViewControllerPreivew: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
}

#endif
