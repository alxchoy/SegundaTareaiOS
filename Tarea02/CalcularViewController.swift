//
//  CalcularViewController.swift
//  Tarea02
//
//  Created by Alexander on 7/02/17.
//  Copyright © 2017 alexanderchoy. All rights reserved.
//

import UIKit

class CalcularViewController: UIViewController {
    
    @IBOutlet weak var swModuloUno: UISwitch!
    
    @IBOutlet weak var swModuloDos: UISwitch!

    @IBOutlet weak var swModuloTres: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController: AvanceViewController = segue.destination as! AvanceViewController
        
        var total:Double = 0.00
        
        if swModuloUno.isOn {
            total = 33.33
            if swModuloDos.isOn && !swModuloTres.isOn || !swModuloDos.isOn && swModuloTres.isOn {
                total = 66.66
            } else if swModuloDos.isOn && swModuloTres.isOn {
                total = 100.00
            }
        }
        
        if swModuloDos.isOn {
            total = 33.33
            if swModuloUno.isOn && !swModuloTres.isOn || !swModuloUno.isOn && swModuloTres.isOn {
                total = 66.66
            } else if swModuloUno.isOn && swModuloTres.isOn {
                total = 100.00
            }
        }
        
        if swModuloTres.isOn {
            total = 33.33
            if swModuloDos.isOn && !swModuloUno.isOn || !swModuloDos.isOn && swModuloUno.isOn {
                total = 66.66
            } else if swModuloDos.isOn && swModuloUno.isOn {
                total = 100.00
            }
        }
        
        
        viewController.numero = total
    }

}
