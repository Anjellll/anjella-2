import Foundation

//2 месяц. ДЗ #1

//1. Создать класс "Машина"(Car) и задать ему свойства
//Создать функцию, которая будет увеличивать мощность авто(тюнинг по всем параметрам)

class Car {

    var marka: String
    var color: String
    var cost: Int
    var engineer: Int
    var acceleration: Double


    func power1() {
       engineer += 100
       acceleration -= 0.5

        print("Mарка -\(marka)\nЦвет -\(color)\nЦена - \(cost)\nМощность -\(engineer)\nРазгон  -\(acceleration)")

    }
    init(marka: String, color: String , cost: Int, engineer: Int,acceleration: Double){
        self.marka = marka
        self.color = color
        self.cost = cost
        self.engineer = engineer
        self.acceleration = acceleration

    }
}


//var car = Car(marka: "BMW", color: "Black", cost: 1000000, engineer: 100, acceleration: 5)
//car.power1()

//2. Создать класс "Магазин" и "Продукт" и задать им свойства
//Также создать функцию добавления продукта в магазин и отображения товаров в магазине
class Product {
    var name: String
    var cost: Int
    var qrcode: Int

    init(name: String, cost: Int, qrcode: Int) {
        self.name = name
        self.cost = cost
        self.qrcode = qrcode
    }
}
var product1 = Product(name: "хлеб", cost: 50, qrcode:  4820024700016)
var product2 = Product(name: "салат", cost: 200, qrcode:  4820024700015)
var product3 = Product(name: "мясо", cost: 500, qrcode: 4820024700010)
var product4 = Product(name: "сыр", cost: 300, qrcode: 4820024700013)
var product5 = Product(name: "молоко", cost: 50, qrcode: 4820024700017)
var product6 = Product(name: "помидор", cost: 100, qrcode: 4820024700011)


class Store {
    var name = ""
    var store = ""
    var square = 0
    var products: [Product] = []

    init(name:String, store: String, square: Int) {
        self.name = name
        self.store = store
        self.square = square
    }
    func addProducts() {
        products.append(product1)
        products.append(product2)
        products.append(product3)
        products.append(product4)
        products.append(product5)
        products.append(product6)
        print("Название магазинa: \(name)\nМагазин:\(store)\nПлощадь \(square) кв.м\n Tовары:\n ")
        dump(products)
    }
}

var store = Store(name: "Алсу", store: "Продуктовый", square: 400)
store.addProducts()


/*3. Создать класс "Банк" и "Клиент"
создать функции для:
1) Подсчета клиентов банка
2) Отображения баланса по ID или фамилии клиента
3) Перевода средств от клиента к другому клиенту */

class Client{
    var name = ""
    var id = Int()
    var balance = Int()
    
    init(name: String, id: Int, balance: Int){
        self.name = name
        self.id = id
        self.balance = balance
    }
  }
var client1 = Client(name: "Антон Антонович", id: 00001, balance: 10000099)
var client2 = Client(name: "Сергей Сергеевич", id: 1111, balance: 12324332)

class Bank{
   var name = ""
    var clients: [Client] = []
    var clientCount = 0
    
    init(name: String, clientCount: Int){
        
    }
//1)Функция для подсчета клиентов банка
    func countOfClient(){
        clients.append(client1)
        clients.append(client2)
        
        dump(clients)
        for i in clients {
            clientCount += 1
            print("Kоличество клиентов банка: \(clientCount)")
            print("")
        }
    }

//2)Функция для oтображения баланса по ID или фамилии клиента
    func balanceOfClients() {
        if client1.id == 00001 || client1.name == "Антон Антонович" {
            print("Баланс клиента Антон Антоновичa: \(client1.balance)")
        }
        if client1.id == 1111 || client2.name == "Сергей Сергеевич" {
            print("Баланс клиента Сергей Сергеевичa: \(client2.balance)")
            print("")
    }
}

//3)Функция для перевода средств от клиента к другому клиенту
    func moneyTransfer() {
        if client1.balance != nil {
            client1.balance -= 500000
            client1.balance += 500000
            print(("Перевод 500000 долларов со счета Антон Антонович 0001 на счет Сергей Сергеевич 1111\nБаланс счета  Сергей Сергеевич 1111 составлет \(client2.balance)\nОстаток на счету Антон Антонович 0001 \(client1.balance)"))
        }
        if client2.balance != nil {
            client2.balance -= 500000
            client1.balance += 500000
            print(("Перевод 500000 долларовсо счета Сергей Сергеевич 1111 на счет Антон Антонович 0001\nБаланс счета  Антон Антоновичs 0001 составлет \(client1.balance)\nОстаток на счету  Сергей Сергеевич 1111 \(client2.balance)"))
            print("")
     }
   }
}

 var  bankClient = Bank(name: "Банк Demir", clientCount: 0)
        bankClient.countOfClient()
        bankClient.balanceOfClients()
        bankClient.moneyTransfer()

