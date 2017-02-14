//
//  SeleccionadosViewController.swift
//  Tarea02
//
//  Created by Alexander on 7/02/17.
//  Copyright © 2017 alexanderchoy. All rights reserved.
//

import UIKit

class SeleccionadosViewController: UIViewController {
    
    var lista: Array<String> = []

    @IBOutlet weak var lblResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var texto: String = ""

        // Do any additional setup after loading the view.
        for item in lista {
            texto += "\(item), "
        }
        lblResultado.text = texto
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnRegresarTouch(_ sender: UIButton) {
        // volver una pantalla anterior
        self.dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
