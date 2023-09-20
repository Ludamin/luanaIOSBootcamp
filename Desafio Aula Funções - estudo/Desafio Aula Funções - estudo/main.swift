//
//  main.swift
//  Desafio Aula Funções - estudo
//
//  Created by Luana Mattana Damin on 26/08/23.
//

//import Foundation
//
////1. Criar uma função com o nome soma que tenha 3
////parametros(valor1:Int,valor2:Int,valor3:Int)equeelafaçauma
////soma entre os valores e quero um retorno sob o valor total
//
//func adition(number1: Int, number2: Int, number3: Int) -> Int {
//    return number1 + number2 + number3
//}
//var aditionResult:Int=adition(number1: 2, number2: 4, number3: 10)
//print(aditionResult)
//
////mesmo exercício utilizando a let intermediária para guardar o valor temporário:
//
//func adicao(numero1:Int, numero2:Int, numero3:Int) -> Int {
//    let guardaValor: Int = numero1 + numero2 + numero3
//    return guardaValor
//}
//var resultadoAdicao:Int=adicao(numero1: 2, numero2: 4, numero3: 10)
//print(resultadoAdicao)
//
//
////2. Crie uma função onde exiba na area de debug uma seguinte frase "Olá Mundo, estou aprendendo a criar minhas primeiras funções"
//
//func helloWorld() {
//    print("Olá mundo, estou aprendendo minhas primeiras funções!")
//}
//helloWorld()


//exercícios que eu pedi para o ChatGPT gerar para mim com o seguinte anúncio:
//gere exercícios de função nível iniciante em Swift para eu tentar resolver. alterne em exercícios com parâmetro, sem parâmetro, com retorno, sem retorno.

//Exercício 1 - Função sem parâmetros e sem retorno:
//Crie uma função chamada cumprimentar que imprima "Olá! Bem-vindo ao mundo das funções." quando for chamada.
func cumprimentar() {
    print("Olá! Bem-vindo ao mundo das funções.")
}
cumprimentar()

//
//Exercício 2 - Função com parâmetro e retorno:
//Crie uma função chamada dobro que recebe um número inteiro como parâmetro e retorna o dobro desse número.
func dobro(numero:Int) -> Int{
    let numeroDobrado:Int = numero * 2
    return numeroDobrado
}
var resultadoNumeroDobrado:Int = dobro(numero: 10)
print("O dobro do número é:  \(resultadoNumeroDobrado)")


//
//Exercício 3 - Função com parâmetros e sem retorno:
//Crie uma função chamada imprimirSoma que recebe dois números inteiros como parâmetros e imprime a soma deles.
func imprimirSoma(num1:Int, num2:Int) {
let fazerSoma:Int = num1 + num2
    print(fazerSoma)
}
imprimirSoma(num1: 10, num2: 5)

//Exercício 4 - Função com parâmetros e retorno:
//Crie uma função chamada calcularMedia que recebe três notas como parâmetros (em formato de números decimais) e retorna a média dessas notas.
func calcularMedia (nota1:Double, nota2:Double, nota3:Double) -> Double {
    let media: Double = (nota1 + nota2 + nota3)/3
    return media
}
var resultadoMedia:Double = calcularMedia(nota1: 10, nota2: 9.5, nota3: 9.8)
print("A média das 3 notas é: \(resultadoMedia)")

//Exercício 5 - Função sem parâmetros e sem retorno:
//Crie uma função chamada exibirDataAtual que imprima a data atual no formato "dd/mm/aaaa".
//

func exibirDataAtual() {
    print("A data de hoje é 26/08/2023 - sábado")
}
exibirDataAtual()

//Exercício 6 - Função com parâmetro e retorno:
//Crie uma função chamada calculaAreaRetangulo que recebe a largura e a altura de um retângulo como parâmetros e retorna a sua área.

func calcularAreaRetangulo(largura:Int, altura:Int) -> Int {
    let area:Int = largura * altura
    return area
}
var resultadoArea:Int = calcularAreaRetangulo(largura: 10, altura: 10)
print("A área do retângulo é \(resultadoArea)")

//Exercício 7 - Função sem parâmetros e com retorno:
//Crie uma função chamada obterDiaDaSemana que retorna o nome do dia da semana atual.
//
func obterDiaDaSemana() -> String {
    return "Hoje é sábado!"
}
var diaDaSemana:String = obterDiaDaSemana()
print(diaDaSemana)

//Exercício 8 - Função com parâmetro e retorno:
//Crie uma função chamada quadradoDe que recebe um número inteiro como parâmetro e retorna o quadrado desse número.
func quadradoDe(numQuadrado:Int) -> Int {
    let calculoQuadrado:Int = numQuadrado * numQuadrado
    return calculoQuadrado
}
var resultadoQuadrado:Int = quadradoDe(numQuadrado: 5)
print(resultadoQuadrado)

//Exercício 9 - Função sem parâmetros e com retorno:
//Crie uma função chamada retornarNome que retorna o seu nome como uma string.

func retornarNome() -> String {
    return "Luana"
}
var nome:String = retornarNome()
print(nome)

//
//Exercício 10 - Função com parâmetros e sem retorno:
//Crie uma função chamada imprimirIdade que recebe um número inteiro (idade) como parâmetro e imprime "Você tem [idade] anos!".
func imprimirIdade(idade:Int) {
    print("Você tem \(idade) anos")
}
imprimirIdade(idade: 33)

//
//Exercício 11 - Função sem parâmetros e com retorno:
//Crie uma função chamada obterNumeroFavorito que retorna o número inteiro 7.

func obterNumeroFavorito() -> Int {
    let numeroFavoritoE = 7
    return numeroFavoritoE
}
let favorito = obterNumeroFavorito()
print(favorito)


//Exercício 12 - Função com parâmetros e sem retorno:
//Crie uma função chamada imprimirSaudacao que recebe uma string (nome) como parâmetro e imprime "Olá, [nome]!".

func imprimirSaudacao(nomeSaudar:String) {
    print("Olá, \(nomeSaudar)")
}
imprimirSaudacao(nomeSaudar: "Douglas")
imprimirSaudacao(nomeSaudar: "Roberto")
imprimirSaudacao(nomeSaudar: "Neiva")

//Exercício 13 - Função com parâmetro e retorno:
//Crie uma função chamada metrosParaCentimetros que recebe um valor em metros como parâmetro e retorna o valor equivalente em centímetros.

//MARK: para imprimir a descrição do que foi feito incluindo os parametros e o retorno assim:


func MetrosParaCentimetros(metros: Double) -> Double {
    let transformarMetroParaCm = metros * 100.0
    return transformarMetroParaCm
}

let emMetros = 3.5
let conversaoCm: Double = MetrosParaCentimetros(metros: emMetros)
print("\(emMetros) metros equivalem a \(conversaoCm) centímetros")

//



