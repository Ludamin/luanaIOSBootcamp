//
//  main.swift
//  DesafioAula - Classes
//
//  Created by Luana Mattana Damin on 13/10/23.
//

import Foundation

print("Hello, World!")

// Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
// Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
// A classe pai terá construtor para setar seus valores.
// Uma das classes filhas não deve conter construtor.
//Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades.


class Moradia {
    var numeroDeQuartos: Int
    var endereco: String
    var ePropria: Bool
    
    init(numeroDeQuartos: Int, endereco: String, ePropria: Bool) {
        self.numeroDeQuartos = numeroDeQuartos
        self.endereco = endereco
        self.ePropria = ePropria
    }
    
    func abrir() {
        print("A morada está aberta")
    }
    
    func fechar() {
        print("A morada está fechada")
    }
}
    
    class Casa: Moradia {
        var temPatio: Bool
        var quantidadeDeGaragens: Int
        var quantidadeDeAndares: Int
        
        init(temPatio: Bool, quantidadeDeGaragens: Int, quantidadeDeAndares: Int) {
            self.temPatio = temPatio
            self.quantidadeDeGaragens = quantidadeDeGaragens
            self.quantidadeDeAndares = quantidadeDeAndares
            super.init(numeroDeQuartos: 4, endereco: "Travessa São Marcos", ePropria: true)
        }
        
        func ser() {
            print("A casa é bonita")
    }
    
    class Apartamento: Moradia {
        
        var nomeDoPredio: String = "Eleve"
        var numeroApartamento: Int = 601
        var temElevador: Bool = true
        }
        
func pintar () {
    print("O prédio está sendo pintado")
    }
    
  
}
