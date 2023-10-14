//
//  main.swift
//  Revisão POO
//
//  Created by Luana Mattana Damin on 13/10/23.
//

import Foundation

print("Hello, World!")

//MARK: Criando uma classe

//classe: o nome da classe precisa começar com letra Maiúscula.
//Precisa estar entre chaves, significa que é um bloco de código e deve ser chamado para ser executado.
// Precisa ter Atributos/Propriedades (que são as características)
//Precisa ter Funções/Métodos (são as ações)

class Casa {
    
    //atributos/propriedades (características) da classe:
    
    var quantidadeDeQuartos: Int = 10
    var temBanheiro: Bool = true
    var quantidadeDePortas: Int = 25
    var estaNoCondominio: Bool = true
    var corDaCasa: String = "Branco"
    
    
    //funções/métodos (ações) da classe:
    func reformar() {
        print("A casa está em reforma")
    }
    
    func abrirJanela() {
        print("Minha casa está com a janela aberta")
    }
    
    func acenderLampada() {
        print("Minha casa está com as lampadas acesas")
    }
    
}

//MARK: Criando o Objeto:

// var minha casa é do tipo Casa (que foi a classe que criamos) que recebe Casa() -
// quando colocamos Casa entre parenteses estamos instanciando o nosso objeto (significa que estamos dando vida a ele, dizendo que é para ele fazer a leitura de toda a classe que criamos Casa):
//quando colocamos minhaCasa. significa que eu consigo acessar todas as minhas características e ações criadas dentro da classe:

var minhaCasa: Casa = Casa()
print(minhaCasa.quantidadeDeQuartos) //acessando características
print(minhaCasa.corDaCasa)
minhaCasa.abrirJanela() //acessando ações

//var minhaCasa: Casa // se eu deixar somente o var minhaCasa: Casa ele irá dar erro, dizendo que precisamos inicializar (ou seja instanciar).
// No caso do objeto a tipagem é uma referência. No caso Casa é uma referência da nossa classe Casa. Sem instanciar Casa(), estamos apenas dizendo que a nossa variável minha Casa tem referência Casa, mas não estamos fazendo a leitura dos valores, por isso precisamos instanciar com = Casa() para que haja essa leitura dos valores.


//MARK: OPCIONAL
//No caso do opcional se eu passo apenas a minha referência ele vai me retornar nil, no caso "teste"pois fizemos a nossa tratativa. E caso eu dê vida ao objeto instanciando Casas() ele retorna "Branco".


// var minhaCasa: Casa? = Casa()
//print(minhaCasa?.corDaCasa ?? "teste")

// outra forma que significa exatamente o mesmo código com opcional:

// var minhaCasa: Casa?
//minhaCasa = Casa()
//print(minhaCasa?.corDaCasa ?? "teste")

//MARK: CONSTRUTOR - para ter uma classe de maneira genérica, onde podemos fazer manipulações dentro dela. (init)

//MARK: ENCAPSULAMENTO (Get e Set)
//Encapsulamento é quando tornamos algumas variáveis privadas e quando damos acesso a elas.
//Por baixo dos panos uma var é publica por default. Mas se eu falo que ela é privada, não posso acessá-lá fora da classe (do bloco) a não ser que eu torne-a publica através de um código. Isso é feito para segurança pois se não qualquer um pode manipular os valores sem você saber.
class Pessoa {
    var nome: String
    var idade: Int
    var peso: Double
    private var acimaDoPeso: Bool = false
    
    //init é como se fosse uma função para colocar os parametros do construtor
    init(nome: String, idade: Int, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.peso = peso
    }
    
    //criando umam função para acessar minha variável privada acimaDoPeso onde ela me retorna um Bool
    public func getAcimaDoPeso() -> Bool {
        return acimaDoPeso
    }
    
    //criando uma função para poder alterar minha variável privada acimaDoPeso
    public func setAcimaDoPeso(value:Bool) {
        self.acimaDoPeso = value
    }
}
var luana: Pessoa = Pessoa(nome: "Luana", idade: 33, peso: 70.3)
var douglas: Pessoa = Pessoa(nome: "Douglas", idade: 35, peso: 80.0)
var caio: Pessoa = Pessoa(nome: "Caio", idade: 21, peso: 90.4)
var marcelo: Pessoa = Pessoa(nome: "Marcelo", idade: 42, peso: 83.2)
print(luana.idade)
print(douglas.nome)
print(caio.getAcimaDoPeso())
caio.setAcimaDoPeso(value: true)
print(caio.getAcimaDoPeso())

//MARK: HERANÇA
// no caso da programação herda características e ações

class Animal {
    
    func comer() {
        print("O animal está comendo")
    }
    
    func correr() {
        print("O animal está correndo")
    }
        
        func dormir() {
            print("O animal está dormindo")
        }
    }
//As classes filhas terão as características da classe pai e mais as dela própria.
class Vaca: Animal {       //Vaca: herda de animal
    var peso: Int = 470
    var temChifre: Bool = true
}

class Cavalo: Animal {    //Cavalo: herda de animal
    var peso: Int = 500
    var raca: String = "Mangalarga"
    
    //override significa que a gente está sobreescrevendo um método que já foi herdado. No caso eu quero que a frase do cavalo seja diferente, por isso utilizo o método da classe pai, sobreescrevendo como eu quero apenas para o cavalo. Ao chamar lá embaixo, ele pega através do nosso método override.
    
    override func correr() {
        print("O cavalo Panter está correndo")
    }
}

var mimosa: Vaca = Vaca()
mimosa.comer()

var ponter: Cavalo = Cavalo()
ponter.dormir()
ponter.correr()

//MARK: REFERÊNCIA:
//Revisão sobre classe: Classe é algo que contém propriedades/Atributos (características) e Métodos/Funções (ações). Além disso, uma das principais características de uma classe é que ela trabalha com Referência, mais conhecido como Reference Type.

class Mac {
    var modelo: String
    var ano: Int
    
    init(modelo: String, ano: Int) {
        self.modelo = modelo
        self.ano = ano
    }
}

var myMac: Mac = Mac(modelo: "MacBook Air", ano: 2020)
var brotherMac: Mac = Mac(modelo: "MacBook Pro", ano: 2016)

myMac.ano = 2022       //eu alterei o ano do meu Mac. Quando eu executo meu mac imprime 2024 e o brotherMac continua como 2016
print(brotherMac.ano)
print(myMac.ano)

myMac = brotherMac     //aqui estou falando que myMac é igual o brotherMac, printará 2016 para ambos
print(brotherMac.ano)
print(myMac.ano)


print("------------")
myMac.ano = 2024         //aqui eu alterei o myMac. O que acontece aqui é o Reference Type.
print(brotherMac.ano)    //Qualquer alteração que eu faço em um lado agora reflete no outro e
print(myMac.ano)         //vice-versa. Por isso tanto myMac quanto brotherMac serão 2024.

// MARK: STRUCT
//Contém propriedades e funções como uma classe. Porém o que difere ela é que ela contém inicializador construtor automático, ela não aceita herança, somente protocólo e ela não trabalha com reference type e sim VALUE TYPE.

struct Sobrado {
    var quantidadeDePortas: Int
    var quantidadeDeBanheiros: Int
    var emConstrucao: Bool
    
}
//ela já cria o inicializador de construção automático sem que a gente precise usar o init:
var casaCaio: Sobrado = Sobrado(quantidadeDePortas: 10, quantidadeDeBanheiros: 5, emConstrucao: false)
var casaAmigo: Sobrado = Sobrado(quantidadeDePortas: 20, quantidadeDeBanheiros: 6, emConstrucao: true)

print(casaCaio.quantidadeDePortas)
print(casaAmigo.quantidadeDePortas)

casaAmigo = casaCaio
casaAmigo.quantidadeDePortas = 35
print("------------")
print(casaCaio.quantidadeDePortas)
print(casaAmigo.quantidadeDePortas)

