//
//  DataBaseManager.swift
//  baseexamenfinal
//
//  Created by Max Alva on 23/06/18.
//  Copyright © 2018 cibertec. All rights reserved.
//

import Foundation
import MagicalRecord

class DataBaseManager {
    
    static let sharedInstance = DataBaseManager()
    
    func crearAlumno() -> Alumno {
        let a = Alumno.mr_createEntity()
        
        a?.nombre = ""
        a?.apellido = ""
        a?.codigo = ""
        a?.direccion = ""
        a?.distrito = ""
        a?.edad = 0
        a?.fecha = ""
        
        self.saveAlumnoDataBaseChanges()
        
        return a!
    }
    
    func saveAlumnoDataBaseChanges() {
        NSManagedObjectContext.mr_default().mr_saveToPersistentStoreAndWait()
    }
    
    func getAlumnos() -> NSArray {
        let arr: NSArray = Alumno.mr_findAll()! as NSArray
        return arr
    }
    
    func deleteAlumno(alumno: Alumno){
        alumno.mr_deleteEntity()
        self.saveAlumnoDataBaseChanges()
    }
    
    
}
