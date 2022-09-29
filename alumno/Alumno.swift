//
//  Alumno.swift
//  alumno
//
//  Created by Alumno on 9/22/22.
//  Copyright © 2022 Estudiate. All rights reserved.
//

class Alumno{
    var nombre : String
    var matricula : String
    var carrera : String
    var edad : Int
    var materias : [Materia]


    init(nombre: String, matricula: String, carrera: String, edad: Int, materias: [Materia]){
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.edad = edad
        self.materias =  materias
    }
}




