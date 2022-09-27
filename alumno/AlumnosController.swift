//
//  AlumnosController.swift
//  alumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//


import UIKit

class AlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var alumnos : [Alumno] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
              
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula
        celda?.lblCarrera.text = alumnos[indexPath.row].carrera
        celda?.lblEdad.text = "\(alumnos[indexPath.row].edad)"
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         alumnos.append(Alumno (nombre: "Azalia", matricula: "199229", carrera: "Ing. Produccion Multi", edad: 21))
    }


}
