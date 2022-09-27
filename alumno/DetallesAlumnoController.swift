//
//  DetallesAlumnoController.swift
//  alumno
//
//  Created by Alumno on 9/27/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//

import UIKit

class DetallesAlumnoController : UIViewController {
    
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblCarrera: UILabel!
    var alumno : Alumno?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if alumno != nil{
            self.title = alumno?.nombre
            lblMatricula.text = alumno?.matricula
            lblEdad.text = "\(alumno!.edad)"
            lblCarrera.text = alumno!.carrera
        } else{
        self.title = "Detalles de Alumno"
        }
    }
}
