//
//  PokeCell.swift
//  pokedex
//
//  Created by Michael Jenkins on 12/11/16.
//  Copyright © 2016 Blades. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thubImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon){
        
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thubImg.image = UIImage.init(named: "\(self.pokemon.pokedexId)")
    }
    
}
