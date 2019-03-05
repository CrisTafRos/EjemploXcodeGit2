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
    }


}

