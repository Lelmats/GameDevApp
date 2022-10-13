//
//  DetallesGameController.swift
//  Games_List_P2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 MaxRivera. All rights reserved.
//

import UIKit

class DetallesGameController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPublisher: UILabel!
    @IBOutlet weak var imgFrontImg: UIImageView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblPlataform: UILabel!
    @IBOutlet weak var lblReviews: UILabel!
    @IBOutlet weak var lblDateOf: UILabel!
    @IBOutlet weak var lblSize: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    var game : Game?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalles del juego"
        
        if game != nil {
            self.title = game!.nombre
            lblNombre.text = game!.nombre
            lblPublisher.text = game!.publisher
            imgFrontImg.image = UIImage(named: game!.frontImg)
            lblPrice.text = "\(game!.price)"
            lblPlataform.text = game!.plataform
            lblReviews.text = game!.reviews
            lblDateOf.text = game!.dateOfPublish
            lblSize.text = game!.size
            lblDescription.text = game!.description
            
            imgFrontImg.layer.cornerRadius = 5
            imgFrontImg.clipsToBounds = true
            imgFrontImg.layer.borderWidth = 2
            imgFrontImg.layer.borderColor = UIColor.gray.cgColor
        }
        else {
            self.title = "Lel"
        }
    }
    
    //Altura de celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return game!.tags.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaTag") as? CeldaTagController
        celda?.lblNombre.text = game!.tags[indexPath.row].nombre
        celda?.lblEtiqueta2.text = game!.tags[indexPath.row].etiqueta2
        
        celda?.lblEtiqueta2.layer.borderColor = UIColor.darkGray.cgColor
        celda?.lblEtiqueta2.layer.cornerRadius = 10
        celda?.lblEtiqueta2.layer.borderWidth = 3.0
        celda?.lblNombre.layer.borderColor = UIColor.darkGray.cgColor
        celda?.lblNombre.layer.cornerRadius = 10
        celda?.lblNombre.layer.borderWidth = 3.0
        return celda!
    }
}
