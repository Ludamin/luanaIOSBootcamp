//
//  main.swift
//  Estruturas Condicionais
//
//  Created by Luana Mattana Damin on 24/08/23.
//

import Foundation

// MARK: - ESTRUTURAS CONDICIONAIS

//if -> Significa "Se"
// Tudo o que está na frente do "if"significa que está realizando uma validação para verificar se é VERDADEIRO OU FALSO

// Porém não podemos prever sempre casos verdadeiros pois existem os casos falsos, com isso utilizamos uma palavra reservada chamada ELSE

//    if 1 + 1 == 2 {
//        // se entrar no primeiro boloco, significa que é VERDADEIRA
//        print("Realmente, a condição é verdadeira.")
//    } else {
//        // if 1 + 1 == 2 {
//        // se entrar no segundo bloco, significa que é FALSA
//        print("Realmente, a condição é falsa")
//
//    }

//Lógica de programação FALA. A LÓGICA DE PROGRAMAÇÃO REPETE O QUE VOCÊ ESTÁ FALANDO
//DICA: SEMPRE COLOCAR EM BREAKPOINT QUANDO VOCÊ CRIA FUNÇÕES PARA VER SE VAI DAR CERTO, PELO MENOS AGORA NO INÍCIO.
    
//func validaMaiorIdade(idade: Int) {
//    if idade >= 18 {
//        print("Eita, agora pode ir preso hein")
//    } else {
//        print("Continue estudando...")
//
//    }
//}
//
////validaMaiorIdade(idade: 21)
//
//func valorDoIngresso (eSocio: Bool) -> Int {
//    if eSocio == true {
//        return 300
//    } else {
//        return 500
//    }
//}
//var valorDoIngresso: Int = valorIngresso(eSocio: true)
//print(valorDoIngresso)

//Quem é sócio o ingreso é 300,00 e quem não é o ingresso é 500,00
//
//func valorIngressoEmGrupo (quantidadeDePessoas: Int, quantidadeSocio: Int) -> Int {
//    if quantidadeSocio > quantidadeDePessoas {
//        return 0
//    } else {
//        let quantidadeNaoSocias: Int = quantidadeDePessoas - quantidadeSocio
//        let total = (quantidadeSocio * 300) + (quantidadeNaoSocias * 500)
//        return total
//    }
//
//}
//var valorDoIngresso: Int = valorIngressoEmGrupo (quantidadeDePessoas: 100, quantidadeSocio: 50)
//print(valorDoIngresso)

//Neste metodo verificamos se o usuário tem carteira de motorista E tem o valor do carro no mínimo 10000.
//Caso alguma das condições sejam falsa não podemos comprar o veículo. Para comprar TODAS DEVEM SER VERDADEIRAS

func vouComprarCarro(carteiraMotorista: Bool, valor:Double) -> Bool {
    if carteiraMotorista == true && valor >= 10000 {
        return true
    } else {
        return false
    }
}

var comprarCarro: Bool = vouComprarCarro(carteiraMotorista: true, valor: 2000)
print(comprarCarro)
        
//Se o usuário gastou mais de 1000 reais OU ele tem cartão fidelidade então ele tem desconto, caso contrário, sem desconto

func descontoLoja(valorTotal: Double, cartaoFidelidade: Bool) -> Bool {
    if valorTotal > 1000 || cartaoFidelidade == true {
        return true
    } else {
        return false
    }
}

var vouTerDesconto: Bool = descontoLoja(valorTotal: 500, cartaoFidelidade: true)
print(vouTerDesconto)

    }
}
