//
//  Pessoa.swift
//  MvcSwift
//
//  Created by Usuário Convidado on 26/03/26.
//

import UIKit

class Pessoa {
    var nome: String!
    var peso: Float!
    var altura: Float!
    var imc: Float!
    
    init(nome: String!, peso: Float!, altura: Float!) {
        self.nome = nome
        self.peso = peso
        self.altura = altura
    }
    
    func calcular(){
        self.imc = self.peso / (self.altura * self.altura)
    }

}
