//
//  NibLoadableView.swift
//  TacoTime
//
//  Created by Raushan Sinha on 6/21/17.
//  Copyright © 2017 Raushan Sinha. All rights reserved.
//

//When we confom to this we get nib file name to use in load nib name

import UIKit

protocol NibLoadableView: class { }

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}
