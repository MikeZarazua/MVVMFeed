//
//  CornerView.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/21/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import Foundation
import UIKit


/**
 This class is designable type in order to show the properties at the rigth side
 */
@IBDesignable class CornerButtonView:UIButton
{
    
    /**
     This attirbute determinates the corner radius, by default is 0
     */
    @IBInspectable var cornerRadius: CGFloat = 0
    {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    /// This attirbute detemrinates the width value of the element
    @IBInspectable var borderWidth: CGFloat = 0
    {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    ///This attibute derminats the color of the width
    @IBInspectable var borderColor: UIColor = UIColor.clear
    {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}


@IBDesignable class CornerImageView:UIImageView
{
    
    /**
     This attirbute determinates the corner radius, by default is 0
     */
    @IBInspectable var cornerRadius: CGFloat = 0
        {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    /// This attirbute detemrinates the width value of the element
    @IBInspectable var borderWidth: CGFloat = 0
        {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    ///This attibute derminats the color of the width
    @IBInspectable var borderColor: UIColor = UIColor.clear
        {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
}
