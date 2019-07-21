//
//  MemeberCell.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/21/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import UIKit

protocol CellConfigurable {
    func setup(viewModel: RowViewModel)
}


protocol RowViewModel {}

/// Conform this protocol to handles user press action
protocol ViewModelPressible {
    var cellPressed: (()->Void)? { get set }
}


class MemeberCell: UITableViewCell, CellConfigurable
{
    
    static var nib: UINib
    {
        return UINib.init(nibName: self.cellIdentifier(), bundle: Bundle.init(for: self))
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(viewModel: RowViewModel)
    {
        
    }
    
}


