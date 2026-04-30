//
//  Aviso.swift
//  Exemplo2_TableView
//
//  Created by Usuário Convidado on 30/04/26.
//

import UIKit

class Aviso: NSObject {
    
    class func mostrarMsg(msg: String, sender: UIViewController){
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertController.Style.alert)
        
        alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
        
        sender.present(alerta, animated: true)
    }

}
