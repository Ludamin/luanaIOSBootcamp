//
//  main.swift
//  Desafios - Arrays e Dicionário
//
//  Created by Luana Mattana Damin on 02/09/23.
//

import Foundation


// Exercicios
//Exercício 1: Arrays
//Crie um array contendo os nomes de três aplicativos iOS populares. Imprima o nome do segundo aplicativo na lista.

var iphoneApps: [String] = ["WhatsApp", "Instagram", "Facebook"]
print(iphoneApps[1])

//Exercício 2: Dicionários
//Crie um dicionário com os nomes de três cores como chaves e seus códigos hexadecimais como valores. Imprima o código hexadecimal da cor "Verde"

var dicCores: [String:Int] = ["Azul": 100300, "Rosa": 100400, "Verde": 100500]
print(dicCores["Verde"] ?? 0)

//Exercício 3: Manipulação de Arrays e Dicionários
//Crie um array contendo 10 números inteiros. Adicione um número inteiro à lista e, em seguida, remova o segundo elemento. Imprima o conteúdo final do array.

var numerosInteiros: [Int] = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
numerosInteiros.append(9)
numerosInteiros.remove(at: 1)
print(numerosInteiros)

//Exercício 4: Acesso a Valores
//Crie um dicionário com os nomes de três frutas e a quantidade que você possui de cada uma.
//Imprima quantas unidades de uma fruta de sua escolha você possui.

var dicFrutas: [String:Int] = ["Morangos": 30, "Abacaxis": 2, "Maçãs": 10]
print(dicFrutas["Maçãs"] ?? "Fruta não encontrada")


//Exercício 5: Percorrendo um Array
//Dado um array de 5 números inteiros, use um for para imprimir cada número na lista

var numerosInteirosRepeticao: [Int] = [1, 2, 3, 4, 5]
for numeros in numerosInteirosRepeticao {
    print(numeros)
}

//Exercício 6: Percorrendo um Dicionário
//Crie um dicionário com Nomes como chaves e Sobrenome como valores. Use um loop for para imprimir cada nome e seu sobrenome formando a seguinte frase: Olá eu me chamo Nome Sobrenome

var dicNomeSobrenome: [String: String] = ["Luana": "Damin", "Douglas": "Stefan", "Roberto Luiz": "Damin", "Neiva": "Damin", "Marcelo": "Damin", "Wiliam": "Damin", "Miriam": "Canali", "Nathália": "Damin", "João": "Mattana", "Frieda Valéria": "Bastian"]
for nomesCompletos in dicNomeSobrenome {
    print("Olá, eu me chamo \(nomesCompletos.key) \(nomesCompletos.value)")
}


