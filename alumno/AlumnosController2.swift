//
//  ViewController.swift
//  alumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//

import UIKit

class AlumnosController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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
    

    @IBOutlet weak var tvAlumnos: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         alumnos.append(Alumno (nombre: "Azalia", matricula: "199229", carrera: "Ing. Produccion Multi", edad: 21))
        alumnos.append(Alumno (nombre: "Marisela", matricula: "199419", carrera: "Ing. Produccion Multi", edad: 21))
        alumnos.append(Alumno (nombre: "Alejandra", matricula: "209004", carrera: "Ing. Produccion Multi", edad: 21))
        alumnos.append(Alumno (nombre: "Armando", matricula: "199186", carrera: "Ing. Produccion Multi", edad: 21))
        alumnos.append(Alumno (nombre: "Emiliano", matricula: "101500", carrera: "Ing. Produccion Multi", edad: 30))
        alumnos.append(Alumno (nombre: "Danna", matricula: "199560", carrera: "Ing. Produccion Multi", edad: 20))
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnoController
        destino.alumno = alumnos[tvAlumnos.indexPathForSelectedRow!.row]
    }

}

