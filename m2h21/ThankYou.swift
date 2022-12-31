//
//  ThankYou.swift
//  m2h21
//
//  Created by Nazar Kydyraliev on 30/12/22.
//

import UIKit

class ThankYou: UIViewController {

    var firstName: String?
    var lastName: String?
    var age: String?
    var country: String?
    var city: String?
    var email: String?
    var numberPhone: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("First Name - \(firstName!).\nLast Name - \(lastName!).\nAge - \(age!).\nCountry - \(country!).\nCity - \(city!).\nEmail - \(email!).\nNumber Phone - \(numberPhone!)")
    }
    
    

}
