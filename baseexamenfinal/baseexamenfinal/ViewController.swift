
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UITextField!
    @IBOutlet weak var codigo: UITextField!
    @IBOutlet weak var apellido: UITextField!
    @IBOutlet weak var direccion: UITextField!
    @IBOutlet weak var distrito: UITextField!
    @IBOutlet weak var edad: UITextField!
    @IBOutlet weak var fecha: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func guardar(_ sender: UIButton) {
        
        let alumno: Alumno = DataBaseManager.sharedInstance.crearAlumno()
        
        alumno.nombre = self.nombre.text
        alumno.apellido = self.apellido.text
        alumno.codigo = self.codigo.text
        alumno.direccion = self.direccion.text
        alumno.distrito = self.distrito.text
        alumno.edad = Int16(self.edad.text!)!
        alumno.fecha = self.fecha.text
        
        DataBaseManager.sharedInstance.saveAlumnoDataBaseChanges()
        
        clearFields()
        
    }
    
    func clearFields() {
        self.nombre.text = ""
        self.apellido.text = ""
        self.codigo.text = ""
        self.direccion.text = ""
        self.distrito.text = ""
        self.edad.text = ""
        self.fecha.text = ""
    }
    
}



