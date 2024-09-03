print("A soma de 5 + 5 é \(5 + 5)")

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
}

//var town = Town(name: "São Paulo")
//print(town)
//print("\(town.name) tem \(town.citizens.count) habitantes")

var newTown = Town(name: "Barueri", citizens: ["João", "Maria", "Pedro"], resources: ["Arroz": 10, "Feijão": 20])
print(newTown)
