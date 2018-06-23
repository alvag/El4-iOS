//
//  DetallesViewController.swift
//  baseexamenfinal
//
//  Created by Max Alva on 23/06/18.
//  Copyright © 2018 cibertec. All rights reserved.
//

import UIKit

class DetallesViewController: UIViewController {
    
    var alumno: Alumno!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var codigo: UILabel!
    @IBOutlet weak var apellido: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombre.text = alumno.nombre
        apellido.text = alumno.apellido
        codigo.text = alumno.codigo

    }
    
    
    @IBAction func eliminar(_ sender: UIButton) {
        
        DataBaseManager.sharedInstance.deleteAlumno(alumno: alumno)
        self.navigationController?.popViewController(animated: true)
    }
    
}
