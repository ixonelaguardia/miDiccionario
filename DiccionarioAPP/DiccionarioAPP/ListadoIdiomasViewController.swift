//
//  ListadoIdiomasViewController.swift
//  DiccionarioAPP
//
//  Created by  on 12/1/16.
//  Copyright © 2016 Egibide. All rights reserved.
//


import UIKit

class ListadoIdiomasViewController: UIViewController {

    var idiomas=["","","",""]
    
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
    @IBAction func carcelar(segue:UIStoryboardSegue) {
        
    }
    
   @IBAction func hecho(segue:UIStoryboardSegue) {
        let nuevoIdiomaVC = segue.sourceViewController as! NuevoIdiomaViewController
    

  
        for i in 0...3{
            if idiomas[i]==""{
                idiomas[i] = nuevoIdiomaVC.nombreIdioma
                break
            }
       }

               if boton1.titleLabel!.text==nil{
                    boton1.setTitle(idiomas[0], forState: .Normal)
                    boton1.enabled=true
                  
                }else{
                    if boton2.titleLabel!.text==nil{
                            boton2.setTitle(idiomas[1], forState: .Normal)
                            boton2.enabled=true
                    }else{
                        if boton3.titleLabel!.text==nil{
                                boton3.setTitle(idiomas[2], forState: .Normal)
                                boton3.enabled=true
                        }else {
                                if boton4.titleLabel!.text==nil{
                                    boton4.setTitle(idiomas[3], forState: .Normal)
                                    boton4.enabled=true
                            }
                        }
                }
    }

    }
    

    var idioma=5;
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if let destino = segue.destinationViewController as? Listado {
            if segue.identifier=="segueIdioma1"{
                destino.indiceIdioma=0
              } else if segue.identifier=="segueIdioma2"{
                 destino.indiceIdioma=1
            } else if segue.identifier=="segueIdioma3"{
                destino.indiceIdioma=2
            } else if segue.identifier=="segueIdioma4"{
                destino.indiceIdioma=3
            }
            }
        }

        


}