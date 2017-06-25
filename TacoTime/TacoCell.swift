//
//  TacoCell.swift
//  TacoTime
//
//  Created by Raushan Sinha on 6/21/17.
//  Copyright © 2017 Raushan Sinha. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, NibLoadableView, Shakeable {
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLabel: UILabel!
    
    var taco: Taco!
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: taco.ProtienId.rawValue)
        tacoLabel.text = taco.ProductName
    }
}
