//
//  ListadoViewController.swift
//  baseexamenfinal
//
//  Created by Max Alva on 23/06/18.
//  Copyright © 2018 cibertec. All rights reserved.
//

import UIKit

class ListadoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var coleccion: UICollectionView!
    
    var arrayAlumnos: NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.coleccion.delegate = self
        self.coleccion.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let alumnos: NSArray = DataBaseManager.sharedInstance.getAlumnos()
        self.arrayAlumnos = NSMutableArray(array: alumnos)
        
        self.coleccion.reloadData()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayAlumnos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = coleccion.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! AlumnosCollectionViewCell
        
        let alumno = self.arrayAlumnos[indexPath.item] as! Alumno
        item.initItem(item: alumno)
        
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detalles", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalles" {
            let id = sender as! NSIndexPath
            let alumno = arrayAlumnos[id.row]
            let destino = segue.destination as! DetallesViewController
            destino.alumno = alumno as! Alumno
        }
    }
    
    

}
