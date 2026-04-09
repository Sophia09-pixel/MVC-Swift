//
//  ViewController.swift
//  exercicioMvc
//
//  Created by Usuário Convidado on 09/04/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtPaciente: UITextField!
    @IBOutlet weak var lbIdade: UILabel!
    @IBOutlet weak var lblPas: UILabel!
    @IBOutlet weak var lblPad: UILabel!
    @IBOutlet weak var lblLink: UILabel!
    @IBOutlet weak var segRisco: UISegmentedControl!
    
    @IBOutlet weak var stpIdade: UIStepper!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func mudarIndice(_ sender: Any) {
        switch segRisco.selectedSegmentIndex{
        case 0:
            print("primeiro botao")
        case 1:
            print("segundo botao")
        case 2:
            print("terceiro botao")
        case 3:
            print("Voce escolheu \(segRisco.titleForSegment(at: segRisco.selectedSegmentIndex)!)")
        default:
            break
        }
        
    }
    
    
    @IBAction func mudarValorSteper(_ sender: Any) {
        lbIdade.text = "\(Int(stpIdade.value))"
    }
    
    @IBAction func mudarValorSliderPas(_ sender: UISlider) {
        lblPas.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarValorPad(_ sender: UISlider) {
        lblPad.text = "\(Int(sender.value))"
    }
    
    @IBAction func mudarSwitch(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func receberLink(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber exame",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet
        )
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertAction.Style.default,
            handler: {
                action in self.lblLink.text = action.title
            }))
        alerta.addAction(UIAlertAction(
            title: "Email",
            style: UIAlertAction.Style.default,
            handler: {
                action in self.lblLink.text = action.title
            }))
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertAction.Style.cancel,
            handler: nil ))
        
        present(alerta, animated: true)
    }
    
    
    @IBAction func botaoAvancar(_ sender: Any) {
        var mensagem: String
        var tipo: String
        
        if segRisco.selectedSegmentIndex >= 0 {
            tipo = segRisco.titleForSegment(at: segRisco.selectedSegmentIndex)!
            mensagem = "Triagem \(tipo), idade paciente \(lbIdade.text!) anos salvado com sucesso "
        } else {
            tipo = ""
            mensagem = "Antes de salvar escolha a classificaçao de risco"
        }
        
        let alerta = UIAlertController(
            title: "Antenção",
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

