//
//  UIView+Extension.swift
//  appBackFront
//
//  Created by Igor Fortti on 22/03/23.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(cornerRadiuns: Double,typeCorners: CACornerMask){
        self.layer.cornerRadius = CGFloat(cornerRadiuns)
        self.clipsToBounds = true
        self.layer.maskedCorners = typeCorners
    }
}
