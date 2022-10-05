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
        
        //1
        instrumentos.append(Instrumentos(nombre: "Piano", tipo: "Percusion", dificultad: "Alta", material: "Metal", año: "1852", creador: "Mi perro", popularidad: "Alta", generos: "Electro Swing", grupo: "Caravana Place", scena: "piano"))
        //2
        instrumentos.append(Instrumentos(nombre: "Violin", tipo: "Cuerda", dificultad: "Alta", material: "Madera", año: "1852", creador: "Mi perro", popularidad: "Alta", generos: "Clasica", grupo: "Mago de Oz", scena: ""))
        
        //Musicos
        //1
        instrumentos[0].musico.append(Musico(nombre: "tOTO", grupo: "Leonardo DiCaprio"))
        instrumentos[0].musico.append(Musico(nombre: "Lara", grupo: "Leonardo DiCaprio"))
        //2
        instrumentos[1].musico.append(Musico(nombre: "Pedro", grupo: "Leonardo DiCaprio"))
        instrumentos[1].musico.append(Musico(nombre: "Azalia", grupo: "Leonardo DiCaprio"))
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
