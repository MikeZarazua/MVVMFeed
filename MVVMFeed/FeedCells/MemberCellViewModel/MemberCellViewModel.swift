//
//  MemberCellViewModel.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/21/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import Foundation

/**
 A class wich if extends, then yoy will obser this values
 */
class MemberCellViewModel: RowViewModel
{
    let name: String
    let avatar: AsyncImage
    let isLoading: Observable<Bool>
    let isAddButtonHiden: Observable<Bool>
    let isAddButtonEnable: Observable<Bool>
    let addButtonTitle: Observable<String>
    var addButtonPressed: (() -> Void)?
    
    init(name:String, avatar: AsyncImage, isLoading: Observable<Bool> = Observable<Bool>(value: false),isAddButtonHiden:Observable<Bool> = Observable<Bool>(value: false),isAddButtonEnable:Observable<Bool> = Observable<Bool>(value: true),addButtonTitle:Observable<String> = Observable<String>(value: "Plus") ,
         addButtonPressed:(() -> Void)? = nil) {
        self.name = name
        self.avatar = avatar
        self.isLoading = isLoading
        self.isAddButtonHiden = isAddButtonHiden
        self.isAddButtonEnable = isAddButtonEnable
        self.addButtonTitle = addButtonTitle
        self.addButtonPressed = addButtonPressed
    }
}
