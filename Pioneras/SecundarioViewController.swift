//
//  SecundarioViewController.swift
//  Pioneras
//
//  Created by Máster Móviles on 31/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

class SecundarioViewController: UIViewController {

    @IBOutlet weak var biografiaText: UITextView!
    var nomFich : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var trayectoria:String!
        switch self.nomFich {
        case "lovelace":
            trayectoria = Bundle.main.path(forResource:"lovelace", ofType:"txt")
        case "hopper":
            trayectoria = Bundle.main.path(forResource:"hopper", ofType:"txt")
        case "liskov":
            trayectoria = Bundle.main.path(forResource:"liskov", ofType:"txt")
        default:
           print("Error")
        }
        biografiaText.text = try! String(contentsOfFile:trayectoria,encoding:String.Encoding.utf8)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
