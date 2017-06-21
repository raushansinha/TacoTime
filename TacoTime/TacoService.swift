//
//  TacoService.swift
//  TacoTime
//
//  Created by Raushan Sinha on 6/21/17.
//  Copyright © 2017 Raushan Sinha. All rights reserved.
//

import Foundation

protocol TacoDataServiceDelegate: class {
    func deliciousTacoDataLOaded()
}

class TacoService {
    
    weak var delegate:TacoDataServiceDelegate?
    
    static let tacoServiceInstance = TacoService()
    
    private init() {}
    
    var tacoArray: Array<Taco> = []
    
    func addDeliciousTacoData() {
        
        tacoArray.append(Taco(id: 1, productName: "Loaded Corn Cheicke Taco", shellId: 1, protienId: 2, contimentId: 1))
        tacoArray.append(Taco(id: 2, productName: "Plain Corn Cheicke Taco", shellId: 1, protienId: 2, contimentId: 2))
        tacoArray.append(Taco(id: 3, productName: "Loaded Flour Cheicke Taco", shellId: 2, protienId: 2, contimentId: 1))
        tacoArray.append(Taco(id: 4, productName: "Plain Flour Cheicke Taco", shellId: 2, protienId: 2, contimentId: 2))
        
        tacoArray.append(Taco(id: 5, productName: "Loaded Corn Brisket Taco", shellId: 1, protienId: 3, contimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Plain Corn Brisket Taco", shellId: 1, protienId: 3, contimentId: 2))
        tacoArray.append(Taco(id: 7, productName: "Loaded Flour Brisket Taco", shellId: 2, protienId: 3, contimentId: 1))
        tacoArray.append(Taco(id: 8, productName: "Plain Flour Brisket Taco", shellId: 2, protienId: 3, contimentId: 2))

        tacoArray.append(Taco(id: 5, productName: "Loaded Corn Fish Taco", shellId: 1, protienId: 4, contimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Plain Corn Fish Taco", shellId: 1, protienId: 4, contimentId: 2))
        tacoArray.append(Taco(id: 7, productName: "Loaded Flour Fish Taco", shellId: 2, protienId: 4, contimentId: 1))
        tacoArray.append(Taco(id: 8, productName: "Plain Flour Fish Taco", shellId: 2, protienId: 4, contimentId: 2))

        tacoArray.append(Taco(id: 5, productName: "Loaded Corn Beef Taco", shellId: 1, protienId: 1, contimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Plain Corn Beef Taco", shellId: 1, protienId: 1, contimentId: 2))
        tacoArray.append(Taco(id: 7, productName: "Loaded Flour Beef Taco", shellId: 2, protienId: 1, contimentId: 1))
        tacoArray.append(Taco(id: 8, productName: "Plain Flour Beef Taco", shellId: 2, protienId: 1, contimentId: 2))
        
        delegate?.deliciousTacoDataLOaded()
    }
}
