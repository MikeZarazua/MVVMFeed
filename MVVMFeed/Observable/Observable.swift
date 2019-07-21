//
//  Observable.swift
//  MVVMFeed
//
//  Created by Miguel Zarazua on 7/21/19.
//  Copyright © 2019 Miguel Zarazua. All rights reserved.
//

import Foundation

class Observable<T>
{
    var value: T
    {
        didSet
        {
            DispatchQueue.main.async
                {
                    self.valueChanged?(self.value)
            }
        }
    }
    
    ///Variable that is a closue that manage a T object
    private var valueChanged: ((T) -> Void)?
    
    init(value: T) {
        self.value = value
    }
    
    ///Now we create a closure as an observer, and trigger the closure inmmediatly when fireNow = true
    func addObserver(fireNow: Bool = true, onChange: ((T) -> Void)?)
    {
        valueChanged = onChange
        if fireNow
        {
            onChange?(value)
        }
    }
    
    func removeObserver()
    {
        valueChanged = nil
    }
}
