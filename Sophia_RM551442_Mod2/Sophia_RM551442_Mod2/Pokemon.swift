//
//  Pokemon.swift
//  Sophia_RM551442_Mod2
//
//  Created by Usuário Convidado on 16/04/26.
//

import UIKit

class Pokemon {
    var nome: String
    var cp: Int
    var hp: Int
    
    init() {
        self.nome = ""
        self.cp = 0
        self.hp = 0
    }
    
    func dobraVida(){
       self.hp *= 2
    }
    
    func verificaVidaPokemon() -> Bool{
        return hp <= 0
    }
    
    func sofrerAtaque(cp: Int){
        if(cp >= 0 && cp <= 200){
            self.hp -= 25
        }else if(cp >= 201 && cp <= 1000){
            self.hp -= 50
        }
    }
    
    
}
