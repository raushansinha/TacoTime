//
//  ReusableView.swift
//  TacoTime
//
//  Created by Raushan Sinha on 6/21/17.
//  Copyright © 2017 Raushan Sinha. All rights reserved.
//

//The View conforming this protocol is going to return its name, so we don't have to hardcode reusable identifier in the code any where. Hard-coding the view name can lead to defect

import UIKit

protocol ReusableView: class { }

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
