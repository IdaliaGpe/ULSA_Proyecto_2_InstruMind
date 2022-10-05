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
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "Siglo XVI", creador: "François Tourte (Forma actual)", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: ""))
        //3 - Listo
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: ""))
        //4 - Listo
        instrumentos.append(Instrumentos(nombre: "Flauta", tipo: "Aire", dificultad: "Baja", material: "Madera", año: "Edad Media", creador: "Desconocido", popularidad: "Baja", generos: "Barroca", grupo: "Gentle Giant", scena: "piano"))
        //5 - Listos
        instrumentos.append(Instrumentos(nombre: "Flauta Travesera", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Siglo XIX", creador: "Theobald Böhm", popularidad: "Media", generos: "Clasica", grupo: "Orquestas", scena: ""))
        //6
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: ""))
        //7
        instrumentos.append(Instrumentos(nombre: "Piano", tipo: "Percusion", dificultad: "Alta", material: "Metal", año: "1700", creador: "Bartolomeo Cristofori", popularidad: "Alta", generos: "Clasica", grupo: "Keane", scena: "piano"))
        //8
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "siglo XVI", creador: "François Tourte (Forma actual)", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: ""))
        //9
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: ""))
        //10
        instrumentos.append(Instrumentos(nombre: "Piano", tipo: "Percusion", dificultad: "Alta", material: "Metal", año: "1700", creador: "Bartolomeo Cristofori", popularidad: "Alta", generos: "Clasica", grupo: "Keane", scena: "piano"))
        //11
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "siglo XVI", creador: "François Tourte (Forma actual)", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: ""))
        //12
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: ""))
        //13
        instrumentos.append(Instrumentos(nombre: "Piano", tipo: "Percusion", dificultad: "Alta", material: "Metal", año: "1700", creador: "Bartolomeo Cristofori", popularidad: "Alta", generos: "Clasica", grupo: "Keane", scena: "piano"))
        //14
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "siglo XVI", creador: "François Tourte (Forma actual)", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: ""))
        //15
        instrumentos.append(Instrumentos(nombre: "Trompeta", tipo: "Aire", dificultad: "Alta", material: "Metal", año: "Edad Media", creador: "Egipcios", popularidad: "Media", generos: "Mariachi", grupo: "Los Camperos", scena: ""))
        
        
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
        //6
        instrumentos[5].musico.append(Musico(nombre: "Itzhak Perlman", grupo: "Solista"))
        instrumentos[5].musico.append(Musico(nombre: "Maxim Vengerov", grupo: "Solista / Profesor"))
        //7
        instrumentos[6].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[6].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //8
        instrumentos[7].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[7].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //9
        instrumentos[8].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[8].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //10
        instrumentos[9].musico.append(Musico(nombre: "Itzhak Perlman", grupo: "Solista"))
        instrumentos[9].musico.append(Musico(nombre: "Maxim Vengerov", grupo: "Solista / Profesor"))
        //11
        instrumentos[10].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[10].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //12
        instrumentos[11].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[11].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //13
        instrumentos[12].musico.append(Musico(nombre: "Itzhak Perlman", grupo: "Solista"))
        instrumentos[12].musico.append(Musico(nombre: "Maxim Vengerov", grupo: "Solista / Profesor"))
        //14
        instrumentos[13].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[13].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
        //15
        instrumentos[14].musico.append(Musico(nombre: "Louis Lortie", grupo: "Solista"))
        instrumentos[14].musico.append(Musico(nombre: "Yuja Wang", grupo: "Solista"))
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
