//
//  DetallesInstrumentosController.swift
//  Proyecto_Parcial_2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesInstrumentosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var lblDificultad: UILabel!
    @IBOutlet weak var lblMaterial: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblCreador: UILabel!
    @IBOutlet weak var lblPopularidad: UILabel!
    @IBOutlet weak var lblGeneros: UILabel!
    @IBOutlet weak var lblGrupo: UILabel!
    @IBOutlet weak var lblImagen: UIImageView!
    
    var instrumentos : Instrumentos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Detalles Instrumentos
        self.title = "Titulo"
        if instrumentos != nil {
            self.title = instrumentos?.nombre
            lblNombre.text = instrumentos?.nombre
            lblTipo.text = instrumentos?.tipo
            lblDificultad.text = instrumentos?.dificultad
            lblMaterial.text = instrumentos?.material
            lblAño.text = instrumentos?.año
            lblCreador.text = instrumentos?.creador
            lblPopularidad.text = instrumentos?.popularidad
            lblGeneros.text = instrumentos?.generos
            lblGrupo.text = instrumentos?.grupo
            
            lblImagen.layer.cornerRadius = 10
            lblImagen.layer.borderWidth = 2
            
            lblImagen.image = UIImage(named: "\(instrumentos!.escena)2")
        }
    }
    
    //Personajes & Interpretes
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instrumentos!.musico.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMusico") as! CeldaMusicoController
        
        celda.lblNombre.text = instrumentos?.musico[indexPath.row].nombre
        celda.lblGrupo.text = instrumentos?.musico[indexPath.row].grupo
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
}
