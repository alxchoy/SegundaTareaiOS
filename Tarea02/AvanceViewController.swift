//
//  AvanceViewController.swift
//  Tarea02
//
//  Created by Alexander on 7/02/17.
//  Copyright © 2017 alexanderchoy. All rights reserved.
//

import UIKit

class AvanceViewController: UIViewController {
    
    var numero: Double?

    @IBOutlet weak var lblNumero: UILabel!
    
    @IBOutlet weak var imgResultado: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblNumero.text = "Curso completado al \(numero!)%"
        
        if Int(numero!) < 50 {
            imgResultado.image = UIImage(named: "dislike.png")
        } else {
            imgResultado.image = UIImage(named: "like.png")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
