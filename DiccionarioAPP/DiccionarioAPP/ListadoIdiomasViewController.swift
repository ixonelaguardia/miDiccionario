//
//  ListadoIdiomasViewController.swift
//  DiccionarioAPP
//
//  Created by  on 12/1/16.
//  Copyright © 2016 Egibide. All rights reserved.
//

import UIKit

class ListadoIdiomasViewController: UIViewController {

    @IBOutlet weak var boton1: UIButton!
    @IBOutlet weak var boton2: UIButton!
    @IBOutlet weak var boton3: UIButton!
        @IBOutlet weak var boton4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    var idioma=5;
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier=="bot1"{
            idioma=0;
        }

    }


}
