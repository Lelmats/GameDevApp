//
//  RoundCorners.swift
//  Games_List_P2
//
//  Created by Alumno on 10/6/22.
//  Copyright © 2022 MaxRivera. All rights reserved.
//

import UIKit

extension UIImageView {
    func makeRounded() {
        layer.borderWidth = 1
        layer.masksToBounds = false
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
}
