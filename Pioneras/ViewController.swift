//
//  ViewController.swift
//  Pioneras
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func retornoDeSecundaria(segue: UIStoryboardSegue) {

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //obtenemos el controller destino y forzamos la conversión al tipo adecuado
      let controller = segue.destination as! SecundarioViewController
      //fijamosla propiedad "nomFich" al identificador del segue
      controller.nomFich = segue.identifier
    }

}

