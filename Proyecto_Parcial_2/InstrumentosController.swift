//
//  InstrumentosController.swift
//  Proyecto_Parcial_2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class InstrumentosController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var lblTvInstrumentos: UITableView!
    
    var instrumentos : [Instrumentos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the vi
        
        //1 - Listo
        instrumentos.append(Instrumentos(nombre: "Piano", tipo: "Percusion", dificultad: "Alta", material: "Metal", año: "1700", creador: "Bartolomeo Cristofori", popularidad: "Alta", generos: "Clasica", grupo: "Keane", scena: "piano"))
        //2 - Listo
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "Siglo XVI", creador: "François Tourte (Forma actual)", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: "violin"))
        //3 - Listo
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: "trompeta"))
        //4 - Listo
        instrumentos.append(Instrumentos(nombre: "Flauta", tipo: "Aire", dificultad: "Baja", material: "Madera", año: "Edad Media", creador: "Desconocido", popularidad: "Baja", generos: "Barroca", grupo: "Gentle Giant", scena: "flauta"))
        //5 - Listo
        instrumentos.append(Instrumentos(nombre: "Flauta Travesera", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Siglo XIX", creador: "Theobald Böhm", popularidad: "Media", generos: "Clasica", grupo: "Orquestas", scena: ""))
        //6 - Listo
        instrumentos.append(Instrumentos(nombre: "Organo", tipo: "Aire", dificultad: "Alta", material: "Madera / Metal", año: "Siglo VII", creador: "Ctesibio", popularidad: "Baja", generos: "Ceremonial", grupo: "Desconocidos", scena: ""))
        //7 - Listo
        instrumentos.append(Instrumentos(nombre: "Bateria", tipo: "Percusion", dificultad: "Alta", material: "Caja", año: "Siglo XIX", creador: "Estados Unidos", popularidad: "Alta", generos: "Romantica", grupo: "Queen", scena: "piano"))
        //8 - Listo
        instrumentos.append(Instrumentos(nombre: "Xilófono", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "500 d.C.", creador: "Griegos", popularidad: "Baja", generos: "Varios", grupo: "Ensamble", scena: ""))
        //9 - Listo
        instrumentos.append(Instrumentos(nombre: "Guitarra Electrica", tipo: "Electronico", dificultad: "Media", material: "Metal", año: "1950", creador: "Leo Fender", popularidad: "Alta", generos: "Jazz", grupo: "Camp Cope", scena: ""))
        //10 - Listo
        instrumentos.append(Instrumentos(nombre: "Gong", tipo: "Percusion", dificultad: "Baja", material: "Metal", año: "3500 A. C.", creador: "Asia Oriental", popularidad: "Baja", generos: "Cereminial", grupo: "Orquetas", scena: "piano"))
        //11 - Listo
        instrumentos.append(Instrumentos(nombre: "Trombón", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "3000 a. C.", creador: "Egipcios", popularidad: "Media", generos: "Rock", grupo: "Bonerama", scena: ""))
        //12 - Listo
        instrumentos.append(Instrumentos(nombre: "Guitarra", tipo: "Cuerda", dificultad: "Baja", material: "Madera", año: "Edad Media", creador: "España", popularidad: "Alta", generos: "Mariachi", grupo: "Mariachis", scena: ""))
        //13 - Listo
        instrumentos.append(Instrumentos(nombre: "Arpa", tipo: "Cuerda", dificultad: "Alta", material: "Metal", año: "Siglo XVII", creador: "Israel", popularidad: "Baja", generos: "Jazz", grupo: "Los Barajas", scena: "piano"))
        //14 - Listo
        instrumentos.append(Instrumentos(nombre: "Clarinete", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Desconocdio", creador: "Europa", popularidad: "Alta", generos: "Clasica", grupo: "Orquesta", scena: ""))
        //15 - Listo
        instrumentos.append(Instrumentos(nombre: "Saxofón", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "1840", creador: "Adolphe Sax", popularidad: "Alta", generos: "Jazz", grupo: "Blue moon", scena: ""))
        
        //Musicos
        //1 - Piano
        instrumentos[0].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[0].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //2 - Violin
        instrumentos[1].musico.append(Musico(nombre: "Itzhak Perlman", grupo: "Solista"))
        instrumentos[1].musico.append(Musico(nombre: "Maxim Vengerov", grupo: "Solista / Profesor"))
        //3 - Trompeta
        instrumentos[2].musico.append(Musico(nombre: "Miles Davis", grupo: "Solista"))
        instrumentos[2].musico.append(Musico(nombre: "Harry James", grupo: "Orquesta"))
        //4 - Flauta
        instrumentos[3].musico.append(Musico(nombre: "Marcel Moyse", grupo: "Profesor"))
        instrumentos[3].musico.append(Musico(nombre: "William Kincaid", grupo: "Kincaid"))
        //5 - Flauta Travesera
        instrumentos[4].musico.append(Musico(nombre: "Jean-Pierre Rampal", grupo: "Solista"))
        instrumentos[4].musico.append(Musico(nombre: "Marcel Moyse", grupo: "Solista"))
        //6 - Organo
        instrumentos[5].musico.append(Musico(nombre: "Felipe Ramírez Ramírez", grupo: "Compositor"))
        instrumentos[5].musico.append(Musico(nombre: "Víctor Urbán", grupo: "Cartedratico"))
        //7 - Bateria
        instrumentos[6].musico.append(Musico(nombre: "Bill Bruford", grupo: "Genesis"))
        instrumentos[6].musico.append(Musico(nombre: "Max Weinberg", grupo: "Max Weinberg 7"))
        //8 - Xilofono
        instrumentos[7].musico.append(Musico(nombre: "Lionel Hampton", grupo: "Solista"))
        instrumentos[7].musico.append(Musico(nombre: "Teddy Brown", grupo: "Solista"))
        //9 - Guitarra Electrica
        instrumentos[8].musico.append(Musico(nombre: "James Allen Hendrix", grupo: "The Jimi Hendrix Experience"))
        instrumentos[8].musico.append(Musico(nombre: "Jeff Beck", grupo: "The Yardbirds"))
        //10 - Gong
        instrumentos[9].musico.append(Musico(nombre: "Variado", grupo: "Orquetas"))
        instrumentos[9].musico.append(Musico(nombre: "Tradicionales", grupo: "Ceremonias"))
        //11 - Trombon
        instrumentos[10].musico.append(Musico(nombre: "Mark Mullins", grupo: "Bonerama"))
        instrumentos[10].musico.append(Musico(nombre: "Craig Klein", grupo: "Bonerama"))
        //12 - Guitarra
        instrumentos[11].musico.append(Musico(nombre: "Fernando Carulli", grupo: "Compositores"))
        instrumentos[11].musico.append(Musico(nombre: "Agustín Barrios Mangoré", grupo: "Compositores"))
        //13 - Arpa
        instrumentos[12].musico.append(Musico(nombre: "Andreas Vollenweider", grupo: "Solista"))
        instrumentos[12].musico.append(Musico(nombre: "Nadia Birkenstock", grupo: "Solista / Profesor"))
        //14 - Clarinete
        instrumentos[13].musico.append(Musico(nombre: "Martin Fröst", grupo: "Solista"))
        instrumentos[13].musico.append(Musico(nombre: "Benny Goodman", grupo: "Compositor"))
        //15 - Saxofón
        instrumentos[14].musico.append(Musico(nombre: "John Coltrane", grupo: "Solista"))
        instrumentos[14].musico.append(Musico(nombre: "Cayetano Pérez", grupo: "Solista"))
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instrumentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaInstrumentos") as!
        CeldaInstrumentosController
        
        celda.lblNombre.text = instrumentos[indexPath.row].nombre
        celda.lblTipo.text = instrumentos[indexPath.row].tipo
        celda.lblDificultad.text = instrumentos[indexPath.row].dificultad
        celda.lblImagen.image = UIImage(named: instrumentos[indexPath.row].escena)
    
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 171
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesInstrumentosController
        destino.instrumentos = instrumentos[lblTvInstrumentos.indexPathForSelectedRow!.row]
    }
}
