//
//  diccionario.swift
//  DiccionarioAPP
//
//  Created by  on 17/12/15.
//  Copyright © 2015 Egibide. All rights reserved.
//

import Foundation


class diccionario{

/*
var ingles = [("cat","gato"),("dog","perro")]
var euskera = [("katua", "gato"),("txakurra","perro")]
    
    
    func mostrarPalabra(i:Int) -> String{
    
        return ingles[i].0 + ": " + ingles[i].1
        
    }


    func anadirPalabra(a: String, b: String){
        ingles.append(a,b)
    }
*/
    
    var diccionario = [[("cat","gato"),("dog","perro")],
                        [("katua", "gato"),("txakurra","perro")],
                        [],
                        []]
    
    func mostrarPalabra(i:Int, j:Int) -> String{
        return diccionario[j][i].0 + ": " + diccionario[j][i].1
   }
    
    func anadirPalabra(a: String, b:String, i: Int){
        diccionario[i].append(a,b)
    
    }
}