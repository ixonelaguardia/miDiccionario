//
//  NuevoIdiomaViewController.swift
//  DiccionarioAPP
//
//  Created by  on 14/1/16.
//  Copyright © 2016 Egibide. All rights reserved.
//

import UIKit

class NuevoIdiomaViewController: UIViewController {

    @IBOutlet weak var cuadroTexto: UITextField!
    var nombreIdioma = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier=="segueHecho"{
          nombreIdioma=cuadroTexto.text!
        }
    }


}
