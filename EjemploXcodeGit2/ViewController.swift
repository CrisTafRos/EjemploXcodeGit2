//
//  ViewController.swift
//  EjemploXcodeGit2
//
//  Created by Laboratorio UNAM-Apple 14 on 05/03/19.
//  Copyright © 2019 Tafolla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewRoja = UIView()
        viewRoja.backgroundColor = .red
        
        view.addSubview(viewRoja)
        
        // Vista sin especificación de medidas
        
        viewRoja.translatesAutoresizingMaskIntoConstraints = false
        
        // Habilita Auto Layout
        
        /* Top -> Arriba
         * Bottom -> Abajo
         * Leading -> Izquierda
         * Trailing -> Derecha */
        
        viewRoja.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        viewRoja.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewRoja.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewRoja.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        // Hasta aquí nos crea una vista de color rojo que ocupa toda la pantalla del dispositivo.
        
        
    }


}

