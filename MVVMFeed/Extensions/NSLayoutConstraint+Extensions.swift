
//
//  NSLayoutConstraint+Extensions.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/21/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import UIKit

extension NSLayoutConstraint
{
    /// Chainging a layout constraint with priority
    func withPriority(priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}
