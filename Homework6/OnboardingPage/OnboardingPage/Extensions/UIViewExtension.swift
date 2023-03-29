//
//  UIViewExtension.swift
//  OnboardingPage
//
//  Created by Emine Sinem on 28.03.2023.
//

//import Foundation
import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return self.cornerRadius }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
