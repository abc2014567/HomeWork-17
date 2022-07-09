//
//  main.swift
//  HomeWork 17
//
//  Created by Staff on 08.07.22.
//

import Foundation

//1. Ստեղծել բազային (base) class Person հետևյալ փրոփրտիով name, Ստեղծել class Chef որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները restaurant, phoneNumber, Ստեղծել class Developer որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները office, phoneNumber: Ստեղծել  Chef և Developer կլասներոց հինգական էկզեմպլյար դրանք տեղադրել մասիվի մեջ (բոլորը նույն մասիվի մեջ) ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։

class Person {
    var name: String
    init(name: String) {
        self.name = name
        
    }
}

class Chef: Person {
    var restaurant: String
    var phoneNumber: String
    
    init(restaurant:String, phoneNumber:String, name:String) {
        self.phoneNumber = phoneNumber
        self.restaurant = restaurant
        super.init(name: name)
    }
}

class developer:Person {
    var office:String
    var phoneNumber:String
    
    init(office:String, phoneNumber:String, name:String) {
        self.office = office
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}


var chef1 = Chef(restaurant:"Tigran", phoneNumber:"Tigran Mec", name:"98 000000")
var chef2 = Chef(restaurant:"Ann", phoneNumber:" Dvin", name:"93 4040404")
var chef3 = Chef(restaurant:"Mark", phoneNumber:"Elba", name:"91 090909")
var chef4 = Chef(restaurant:"Alex", phoneNumber:" Belagio", name:"91 010101")
var chef5 = Chef(restaurant:"Arus", phoneNumber:"Machanenc tun", name:"98 765656")


var developer1 = developer(office:"Nairi", phoneNumber:"060 232323", name:"Davit")
var developer2 = developer(office:"Armenia", phoneNumber:"060 343434", name:"Tik")
var developer3 = developer(office:"Ardshin", phoneNumber:"010 767676", name:"Sahak")
var developer4 = developer(office:"Evoca", phoneNumber:"010 705050", name:"Nelly")
var developer5 = developer(office:"Reso", phoneNumber:"060 505757", name:"Karen")

let arrayworkeers:[Person] = [chef1, chef2, chef3, chef4,chef5, developer1, developer2,developer3, developer4, developer5]

    for persons in arrayworkeers {
    if persons is Chef  {
        let ourchef = persons as! Chef
        
        print("chef: name\(persons.name), restaurant:\(ourchef.restaurant), phoneNumber\(ourchef.phoneNumber)")
        
    } else if persons is developer {
            let ourdeveloper = persons as? developer
        
        print("chef: name\(persons.name), office:\(ourdeveloper!.office), phonenumber\(ourdeveloper!.phoneNumber)")
            
        }
}




//2. Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
// ցիկլով տպել այդ արժեքները։

let a:Int = 12
let b:Double = 34.5
let c:Float = 6.098
let d:String = "age"

let array:[Any] = [a, b, c, d]

for index in array {
    print(index)
}

//3. Int-ի համար գրել Extension
//- plus(r: Int)
//- minus(r: Int)

extension Int {
    func plus(r:Int) {
        print(self + r)
    }
    func minus(r:Int) {
        print(self - r)
    }
}


a.plus(r: 4)
a.minus(r: 8)


//4. Double համար գրել Extension
//- plus(r: Double)
//- minus(r: Double)

extension Double {
    func plus(r:Double) -> Double {
        return(self + r)
    
    }
    
    func minus(r:Double) -> Double {
       return(self - r)
}
}


