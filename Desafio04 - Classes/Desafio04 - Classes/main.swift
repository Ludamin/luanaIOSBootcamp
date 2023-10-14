//
//  main.swift
//  Desafio04 - Classes
//
//  Created by Luana Mattana Damin on 14/10/23.
//

import Foundation

print("Hello, World!")


//MARK: Crie uma classe chamada "Produto" com propriedades como "nome", "preço" e "estoque". Crie objetos dessa classe representando produtos diferentes.
//MARK: Implemente um método na classe "Produto" que calcule o valor total em estoque para esse produto (preço x estoque).

class Product {
    var name: String
    var price: Double
    var stock: Int
    
    init(name: String, price: Double, stock: Int) {
        self.name = name
        self.price = price
        self.stock = stock
    }
    
    func calculateAmount() -> Double {
           return price * Double(stock)
       }
}
//criando objetos da classe Produtos
var product1: Product = Product(name: "camiseta", price: 59.00, stock: 4)
var product2: Product = Product(name: "bermuda", price: 92.00, stock: 6)
var product3: Product = Product(name: "Calça", price: 115.00, stock: 10)
var product4: Product = Product(name: "Saia", price: 99.00, stock: 20)

// Calculando o valor total em estoque para cada produto
let product1Amount = product1.calculateAmount()
let product2Amount = product1.calculateAmount()
let product3Amount = product1.calculateAmount()
let product4Amount = product1.calculateAmount()

// Exibindo o valor total em estoque para cada produto
print("Valor total em estoque para \(product1.name) é \(product1Amount)")
print("Valor total em estoque para \(product2.name) é \(product2Amount)")
print("Valor total em estoque para \(product3.name) é \(product3Amount)")
print("Valor total em estoque para \(product4.name) é \(product4Amount)")


//MARK: Crie uma classe chamada "ContaBancaria" com propriedades como "saldo" e "titular". Implemente métodos para depositar e sacar dinheiro da conta.
//MARK: Refatore a classe "ContaBancaria" para tornar as propriedades "saldo" e "titular" privadas e adicione métodos públicos para acessá-las. (encapsulamento)

class BankAccount {
    private var balance: Double
    private var holder: String
    
    init(balance: Double, holder: String) {
        self.balance = balance
        self.holder = holder
    }
    
    public func getBalance() -> Double {
        return balance
    }
    
    public func getHolder() -> String {
        return holder
    }
}
    
func withdrawMoney() {
    print("Sacar dinheiro")
}

func depositMoney() {
    print("Depositar dinheiro")
}

var luana: BankAccount = BankAccount(balance: 50000234.22, holder: "Luana Mattana Damin")
print(luana.getHolder())
print(luana.getBalance())


//MARK: Crie uma classe base chamada "Veiculo" com propriedades como "marca" e "modelo". Em seguida, crie subclasses, como "Carro" e "Moto", que herdem de "Veiculo" e incluam propriedades específicas para cada tipo de veículo.
//MARK: Crie uma função que aceite um parâmetro do tipo "Veiculo" e chame um método, como "acelerar", desse veículo. Pode passar diferentes valor para a função.


class Vehicle {
    var brand: String
    var model: String
    
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    func accelerate(speed: Int) {
        print("O veículo está acelerando a \(speed) km/h.")
    }
}
    
class Car: Vehicle {
    var doorsNumber: Int
    var carColor: String
    
    init(doorsNumber: Int, carColor: String, brand: String, model: String) {
        self.doorsNumber = doorsNumber
        self.carColor = carColor
        super.init(brand: brand, model: model)
    }
}

class Motorcycle: Vehicle {
    var weight: Double
    var needMotorLicense: Bool = true
    init(weight: Double, needMotorLicense: Bool, brand: String, model: String) {
        self.weight = weight
        self.needMotorLicense = needMotorLicense
        super.init(brand: brand, model: model)
    }
}

// Função que aceita um veículo genérico e o faz acelerar
func accelerateVehicle(vehicle: Vehicle, speed: Int) {
    vehicle.accelerate(speed: speed)
}

var compass: Car = Car(doorsNumber: 5, carColor: "Chumbo", brand: "Jeep", model: "Compass")
var ramPage: Car = Car(doorsNumber: 4, carColor: "Preta", brand: "Ram", model: "Page")
var hrv: Car = Car(doorsNumber: 5, carColor: "Branca", brand: "Honda", model: "HRV")
var tCross: Car = Car(doorsNumber: 5, carColor: "Branca", brand: "Wolksvagem", model: "T-Cross")
var roadKing: Motorcycle = Motorcycle(weight: 350, needMotorLicense: true, brand: "Harley Davidson", model: "Road King")
var iron: Motorcycle = Motorcycle(weight: 200, needMotorLicense: true, brand: "Harley Davidson", model: "Iron")

//chamando função do segundo exercício
accelerateVehicle(vehicle: compass, speed: 120)

print(compass.doorsNumber, compass.carColor, compass.brand, compass.model)
print(ramPage.brand, ramPage.model, ramPage.carColor)
print(roadKing.brand, roadKing.model, roadKing.weight)
print(iron.needMotorLicense)

// MARK: Crie uma classe base chamada "Animal" com propriedades como "nome" e "idade". Em seguida, crie duas subclasses, como "Cachorro" e "Gato", que herdem de "Animal" e incluam propriedades específicas para cada animal.
//MARK: Implemente um método na classe base "Animal" que todos os animais possam usar, como "fazerBarulho". As classes filha devem sobrescrever esse método para cada animal fazer um som diferente. (polimorfismo)

class Animal {
    var petName: String
    var petAge: Int
    
    init(petName: String, petAge: Int) {
        self.petName = petName
        self.petAge = petAge
    }
        func petNoise() {
            print("O animal está fazendo barulho")
        }
}

class Dog: Animal {
    var dogRace: String
    init(petName: String, petAge: Int, dogRace: String) {
        self.dogRace = dogRace
        super.init(petName: "Boby", petAge: 16)
    }
    override func petNoise() {
          print("O cachorro \(petName) late. Woof! Woof!")
      }
}

class Cat: Animal {
    var color: String = "Orange"
    
    override func petNoise() {
        print("O gato \(petName) mia. Miau! Miau!")
    }
}

// Criando uma instância de Cachorro
let dog: Dog = Dog(petName: "teste", petAge: 0, dogRace: "Poodle")
// Criando uma instância de Gato
let cat = Cat(petName: "Geromel", petAge: 8)

// Acessando as propriedades
print("Cachorro: \(dog.petName), Idade: \(dog.petAge), Raça: \(dog.dogRace)")
print("Gato: \(cat.petName), Idade: \(cat.petAge), Cor da Pelagem: \(cat.color)")

dog.petNoise()
cat.petNoise()


//MARK: Crie um array de strings contendo nomes de cidades. Escreva um código para ordenar o array em ordem alfabética.

var cities = ["Nova Iorque", "Los Angeles", "Chicago", "Houston", "Miami", "Boston"]

// Ordenar o array em ordem alfabética
cities.sort()

// Agora, o array 'cidades' está ordenado em ordem alfabética
print(cities)

//MARK: Crie um array de números inteiros e escreva um código para encontrar o valor máximo e mínimo no array.

let numbers = [2, 22, 56, 10, 47, 42, 25, 33, 68, 65, 99, 365]

// Encontrar o valor máximo e mínimo usando os métodos 'max()' e 'min()'
let maximum = numbers.max() // Encontra o valor máximo
let minimum = numbers.min() // Encontra o valor mínimo

// Verificando se os valores máximo e mínimo foram encontrados, pois o método max() e min() retornam valores opcionais, e um array vazio não terá valores máximos e mínimos.
if let maximum = maximum, let minimum = minimum {
    print("O valor mínimo é \(minimum) e o valor máximo é \(maximum)")
} else {
    print("O array está vazio, não foi possível encontrar os valor mínimo e máximo")
}

//MARK: Crie uma array contendo varios nome de pessoas
//MARK: Crie um loop que percorre o array de pessoas e verifica se a idade de cada pessoa é maior ou igual a 18 anos. Se for, imprima uma mensagem dizendo que a pessoa é maior de idade; caso contrário, imprima uma mensagem dizendo que a pessoa é menor de idade.

let people: [(name: String, age: Int)] = [("Luana", 33), ("João", 91), ("Frieda", 92), ("Douglas", 35), ("Nicolas", 7), ("Isabelle", 5), ("Nathália", 10), ("Roberto", 68), ("Neiva", 65), ("Wiliam", 42), ("Marcelo", 42), ("Miriam", 42)]

//Loop para verificar a idade de cada pessoa
for verificationAge in people {      // sendo verificatiionAge um nome qualquer que eu quis colocar
    if verificationAge.age >= 18 {
        print("\(verificationAge.name) é maior de idade.")
    } else {
        print("\(verificationAge.name) é menor de idade")
    }
}

//MARK: Declare uma variável chamada "saldoBancario" com um valor inicial e determine se essa variável deve ser do tipo Int ou Double, com base na natureza dos valores que ela armazena.

var bankBalance: Double = 40000000000000.67
var bankBalanceInt: Int = 40000000000000

//MARK: Crie uma classe chamada "Pessoa" com propriedades como "nome", "idade" e "gênero". Implemente um construtor para inicializar essas propriedades.

class Person {
    var personName: String
    var personAge: Int
    var personGender: String
    
    init(personName: String, personAge: Int, personGender: String) {
        self.personName = personName
        self.personAge = personAge
        self.personGender = personGender
    }
}

var luanaa: Person = Person(personName: "Luana", personAge: 33, personGender: "female")
var douglas: Person = Person(personName: "Douglas", personAge: 35, personGender: "male")
var neiva: Person = Person(personName: "Neiva", personAge: 65, personGender: "famale")
var roberto: Person = Person(personName: "Roberto", personAge: 68, personGender: "male")

print(luanaa.personName, luanaa.personAge, luanaa.personGender)
print(douglas.personName, douglas.personAge, douglas.personGender)
print(neiva.personName, neiva.personAge, neiva.personGender)
print(roberto.personName, roberto.personAge, roberto.personGender)


//MARK: Crie uma classe chamada "Empresa" que tenha propriedades como "nome", "idade" e "endereço". Defina essas propriedades como privadas e forneça métodos públicos para acessá-las e atualizá-las de maneira controlada. Pode criar uma classe "Cliente" e atribuir os métodos públicos. (encapsulamento)

class Company {
    private var companyName: String
    private var companyAge: Int
    private var companyAdress: String
    
    init(companyName: String, companyAge: Int, companyAdress: String) {
        self.companyName = companyName
        self.companyAge = companyAge
        self.companyAdress = companyAdress
    }
    
    public func getCompanyName() -> String {
        return companyName
    }
    
    public func getCompanyAge() -> Int {
        return companyAge
    }
    
    public func getCompanyAdress() -> String {
        return companyAdress
    }
}
    
    var hidroconforto: Company = Company(companyName: "Hidroconforto", companyAge: 10, companyAdress: "Pioneiro")
    var enece: Company = Company(companyName: "Enecê 3E", companyAge: 40, companyAdress: "Kayser")
    
    print (hidroconforto.getCompanyName(), hidroconforto.getCompanyAge(), hidroconforto.getCompanyAdress())
print(enece.getCompanyName(), enece.getCompanyAge(), enece.getCompanyAdress())
    

