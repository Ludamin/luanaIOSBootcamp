//
//  main.swift
//  Desafio Condicionais
//
//  Created by Luana Mattana Damin on 16/09/23.
//

import Foundation

print("Hello, World!")

//1-Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado" se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"

func notas (nota1:Double, nota2:Double) -> String {
    if (nota1 + nota2)/2 >= 7 {
        return "Aluno aprovado"
    } else {
        return "Aluno reprovado"
    }
}

var resultadoNotas: String = notas(nota1: 8, nota2: 9)
print ("Resultado \(resultadoNotas)")


//2-Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.

func desconto (total: Double) -> Double {
    if total < 100 {
        return total * 0.90
    } else if total <= 200 {
       return total * 0.85
    } else {
        return total * 0.80
    }
}

var valorComDesconto: Double = desconto(total: 80)
print("O valor total com desconto é: \(valorComDesconto)")


//3-Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE, se for amarelo, retorne
//"ATENÇÃO*, se for verde, retorne
//"SIGA EM FRENTE, se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semaforo(cor:String)-> String {
    if cor == "vermelho" {
        return "PARE"
    } else if cor == "amarelo" {
        return "ATENÇÃO"
    } else if cor == "verde" {
        return "SIGA EM FRENTE"
    } else {
        return "PARÂMETRO INVÁLIDO"
    }
}

var resultadoSemaforo:String = semaforo(cor: "rosa")
print ("\(resultadoSemaforo)")

//4-Crie uma função que receba dois parâmetros (FimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"

func finalDeSemana(eFimDeSemana: Bool, tenhoDinheiro: Bool) -> String {
    if eFimDeSemana && tenhoDinheiro {
     return "VAMOS PASSEAR"
    } else {
        return "VAMOS FICAR EM CASA"
    }
}

var resultadoFindi = finalDeSemana(eFimDeSemana: true, tenhoDinheiro: true)
print("\(resultadoFindi)")


//5- Crie uma função que receba um parâmetro do tipo Int e retorne true se o número recebido for PAR
//e false se o número recebido for IMPAR.

//Usei o operador de módulo % para ver se o resto 0 = par se não é impar

func isPar(numero: Int) -> Bool {
    if numero % 2 == 0 {
        return true
    } else {
        return false
    }
}

var resultadoParImpar: Bool = isPar(numero: 4)
print("\(resultadoParImpar)")


//6-Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"

func parametros(parametro1: Double, parametro2: Double) -> String {
    if parametro1 > parametro2 {
        return "Bola"
    } else if parametro1 < parametro2 {
        return "Banana"
    } else {
        return "Os parâmetros são iguais"
    }
}

var resultadoParametros: String = parametros(parametro1: 2.4, parametro2: 5.3)
print ("\(resultadoParametros)")


//7- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print
//"Infelizmente você não foi convidado"

func convidado(foiConvidado: Bool) {
    if foiConvidado == true {
        print("Liberado para a festa")
    } else {
        print("Infelizmente você não foi convidado")
    }
}

convidado(foiConvidado: true)
