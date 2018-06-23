//
//  AlumnosCollectionViewCell.swift
//  baseexamenfinal
//
//  Created by Max Alva on 23/06/18.
//  Copyright © 2018 cibertec. All rights reserved.
//

import UIKit

class AlumnosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nombre: UILabel!
    
    func initItem(item: Alumno) {
        self.nombre.text = item.nombre
    }
}
