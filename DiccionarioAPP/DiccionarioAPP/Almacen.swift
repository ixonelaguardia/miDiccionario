//
//  Almacen.swift
//  DiccionarioAPP
//
//  Created by  on 21/1/16.
//  Copyright © 2016 Egibide. All rights reserved.
//


/*clase estatica http://anthon.io/how-to-share-data-between-view-controllers-in-swift/ */


import Foundation

class Almacen {
    class var sharedInstance: Almacen {
        struct Static {
            static var instance: Almacen?
            static var token: dispatch_once_t = 0
        }
        
        dispatch_once(&Static.token) {
            Static.instance = Almacen()
        }
        
        return Static.instance!
    }
    
    
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