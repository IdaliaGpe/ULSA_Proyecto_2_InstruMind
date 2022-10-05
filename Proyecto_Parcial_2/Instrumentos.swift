//
//  Instrumentos.swift
//  Proyecto_Parcial_2
//
//  Created by Alumno on 10/3/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Instrumentos {
    var nombre : String
    var tipo : String
    var dificultad : String
    var material : String
    var año : String
    var creador : String
    var popularidad : String
    var generos : String
    var grupo : String
    var musico : [Musico] = []
    var escena : String
    
    init(nombre: String, tipo: String, dificultad: String, material: String, año: String, creador: String, popularidad: String, generos: String, grupo: String, scena: String)
    {
        self.nombre = nombre
        self.tipo = tipo
        self.dificultad = dificultad
        self.material = material
        self.año = año
        self.creador = creador
        self.popularidad = popularidad
        self.generos = generos
        self.grupo = grupo
        self.escena = scena
    }
}
