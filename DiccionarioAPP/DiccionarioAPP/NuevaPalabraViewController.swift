//
//  NuevaPalabraViewController.swift
//  DiccionarioAPP
//
//  Created by  on 17/12/15.
//  Copyright © 2015 Egibide. All rights reserved.
//

import UIKit

class NuevaPalabraViewController: UIViewController {

    @IBOutlet weak var textoTraduccion: UITextField!
    @IBOutlet weak var textoPalabra: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation
var palabra=""
    var traduccion=""
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier=="hecho"{
        
        palabra=textoPalabra.text
            traduccion=textoTraduccion.text
        }
    }


}
