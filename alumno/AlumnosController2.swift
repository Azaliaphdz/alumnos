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
    var materias1: [Materia] = []
    var materias2: [Materia] = []
    var materias3: [Materia] = []
    
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
        
        materias1.append(Materia(nombre: "Cálculo", codigo: "123A"))
        materias1.append(Materia(nombre: "Modelado 3D", codigo: "456B"))
        materias1.append(Materia(nombre: "Diseño de personajes", codigo: "456B"))
          
        materias2.append(Materia(nombre: "Física", codigo: "789C"))
        materias2.append(Materia(nombre: "Historia", codigo: "564D"))
          
        materias3.append(Materia(nombre: "Quimica", codigo: "445E"))
        materias3.append(Materia(nombre: "Tratamiento", codigo: "965F"))
        
          ///
        alumnos.append(Alumno(nombre: "Azalia", matricula: "199229", carrera: "IPM", edad: 21, materias: materias1))
        alumnos.append(Alumno(nombre: "Marisela", matricula: "199419", carrera: "IPM", edad: 21, materias: materias2))
        alumnos.append(Alumno(nombre: "Alejandra", matricula: "209004", carrera: "IPM", edad: 21, materias: materias3))
          
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnoController
        destino.alumno = alumnos[tvAlumnos.indexPathForSelectedRow!.row]
    }

}

