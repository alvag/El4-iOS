//
//  Alumno+CoreDataProperties.swift
//  
//
//  Created by Max Alva on 23/06/18.
//
//

import Foundation
import CoreData


extension Alumno {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Alumno> {
        return NSFetchRequest<Alumno>(entityName: "Alumno")
    }

    @NSManaged public var nombre: String?
    @NSManaged public var apellido: String?
    @NSManaged public var edad: Int16
    @NSManaged public var codigo: String?
    @NSManaged public var direccion: String?
    @NSManaged public var distrito: String?
    @NSManaged public var fecha: String?

}
