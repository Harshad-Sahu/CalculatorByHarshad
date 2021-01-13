//
//  RoundButton.swift
//  Calculator Layout iOS13
//
//  Created by Harshad Sahu on 12/01/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

@IBDesignable

class RoundButton: UIButton {

    @IBInspectable var roundButton:Bool = false
    {
        didSet{
            if roundButton{
                layer.cornerRadius = frame.height/2
            }
        }
    }

    override  func prepareForInterfaceBuilder() {
        if roundButton{
            layer.cornerRadius = frame.height/2
        }
    }
}
