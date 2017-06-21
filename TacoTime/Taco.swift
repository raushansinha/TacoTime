//
//  Taco.swift
//  TacoTime
//
//  Created by Raushan Sinha on 6/21/17.
//  Copyright © 2017 Raushan Sinha. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtien: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _id: Int! // ! makes this property mandatory to create its object
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _protienId: TacoProtien
    private var _contimentId: TacoCondiment!
    
    var id: Int {
        return _id
    }
    
    var ProductName: String {
        return _productName
    }
    
    var DhellId: TacoShell {
        return _shellId
    }
    
    var ProtienId: TacoProtien {
        return _protienId
    }
    
    var ContimentId: TacoCondiment {
        return _contimentId
    }
    
    init(id: Int, productName: String, shellId: Int, protienId: Int, contimentId: Int) {
        _id = id
        _productName = productName
        
        switch(shellId){
        case 2:
            _shellId = TacoShell.Corn
        default:
            _shellId = TacoShell.Flour
        }
        
        switch(protienId) {
        case 2:
            _protienId = TacoProtien.Chicken
        case 3:
            _protienId = TacoProtien.Brisket
        case 4:
            _protienId = TacoProtien.Fish
        default:
            _protienId = TacoProtien.Beef
        }
        
        switch(contimentId) {
        case 2:
            _contimentId = TacoCondiment.Plain
        default:
            _contimentId = TacoCondiment.Loaded
        }
    }
}
