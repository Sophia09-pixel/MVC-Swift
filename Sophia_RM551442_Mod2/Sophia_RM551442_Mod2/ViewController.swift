//
//  ViewController.swift
//  Sophia_RM551442_Mod2
//
//  Created by Usuário Convidado on 16/04/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNomePokemon: UITextField!
    @IBOutlet weak var lblHp: UITextField!
    @IBOutlet weak var switchDobrarHp: UISwitch!
    @IBOutlet weak var lblPc: UITextField!
    var pokemon = Pokemon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchDobrarHp.isOn = false
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dobrar(_ sender: Any) {
        if switchDobrarHp.isOn {
            atualizaClasse()
            pokemon.dobraVida()
            lblHp.text = String(pokemon.hp)
            switchDobrarHp.isEnabled = false
        }
    }
    
    
    @IBAction func sliderPc(_ sender: UISlider) {
        lblPc.text = String(Int(sender.value))
    }
    
    
    @IBAction func sofrerAtaque(_ sender: UIButton) {
        print("clicou")
        atualizaClasse()
        var cpInimigo: Int
        
        cpInimigo = Int(lblPc.text!)!
        if !pokemon.verificaVidaPokemon() {
            pokemon.sofrerAtaque(cp: cpInimigo)
            lblHp.text = String(Int(pokemon.hp))
        }else{
            mostrarAlerta(mensagem: "Pokemon \(pokemon.nome) foi derrotado!")
        }
    }
    
    func atualizaClasse(){
        pokemon.nome = lblNomePokemon.text!
        pokemon.hp = Int(lblHp.text!)!
    }
    
    func mostrarAlerta(mensagem: String){
        let alerta = UIAlertController(
            title: "Aviso",
            message: mensagem,
            preferredStyle: UIAlertController.Style.alert
        )
                
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertAction.Style.default
        ))
        present(alerta, animated: true)
    }
}

