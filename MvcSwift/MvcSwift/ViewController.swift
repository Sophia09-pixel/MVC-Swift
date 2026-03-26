//
//  ViewController.swift
//  MvcSwift
//
//  Created by Usuário Convidado on 26/03/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtImc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnCalcularImc(_ sender: Any) {
        let pessoa = Pessoa(nome: txtNome.text, peso: Float(txtPeso.text!), altura: Float(txtAltura.text!))
        
        pessoa.calcular()
        txtImc.text = String(pessoa.imc)
    }
    
}

