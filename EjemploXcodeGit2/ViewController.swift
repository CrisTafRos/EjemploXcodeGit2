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
        
        /*
        viewRoja.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        viewRoja.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        viewRoja.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        viewRoja.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
         */
        
        // Hasta aquí nos crea una vista de color rojo que ocupa toda la pantalla del dispositivo.
        
        //Invocando la función anchor
        
        /*viewRoja.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor)*/
        
        viewRoja.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16))
        
    }
}

extension UIView {
    /*
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        // Habilita el Auto Layout
        
        topAnchor.constraint(equalTo: top).isActive = true
        leadingAnchor.constraint(equalTo: leading).isActive = true
        trailingAnchor.constraint(equalTo: trailing).isActive = true
        bottomAnchor.constraint(equalTo: bottom).isActive = true
    }
    */
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, trailing: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, padding: UIEdgeInsets = .zero){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        // Habilita el Auto Layout
        
        topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        trailingAnchor.constraint(equalTo: trailing, constant: padding.right).isActive = true
        bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom).isActive = true
    }
}
