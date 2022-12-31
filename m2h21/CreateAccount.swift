//
//  CreateAccount.swift
//  m2h21
//
//  Created by Nazar Kydyraliev on 30/12/22.
//

import UIKit

class CreateAccount: UIViewController {
    
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var country: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var numberPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goVCA(_ sender: Any) {
        let mFirstName = firstName.text!
        if firstName.text == ""{
            firstName.attributedPlaceholder = NSAttributedString(
                string: "First Name *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mLastName = lastName.text!
        if lastName.text == ""{
            lastName.attributedPlaceholder = NSAttributedString(
                string: "Last Name *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mAge = age.text!
        if age.text == ""{
            age.attributedPlaceholder = NSAttributedString(
                string: "Age *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mCountry = country.text!
        if country.text == ""{
            country.attributedPlaceholder = NSAttributedString(
                string: "Country *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mCity = city.text!
        if city.text == ""{
            city.attributedPlaceholder = NSAttributedString(
                string: "City *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mEmail = email.text!
        if email.text == ""{
            email.attributedPlaceholder = NSAttributedString(
                string: "Email *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let mNumber = numberPhone.text!
        if numberPhone.text == ""{
            numberPhone.attributedPlaceholder = NSAttributedString(
                string: "Number Phone *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        func goToTY(){
            performSegue(withIdentifier: "goVCC", sender: nil)
        }
        
        let profileData = [mFirstName, mLastName, mAge, mCountry, mCity, mEmail, mNumber]
        var count = 0
        for (_, key) in profileData.enumerated(){
            if key == ""{
                
            } else {
                count += 1
            }
        }
        if count == 7{
            goToTY()
        } else {
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goVCC"){
            let sendDataVC: ThankYou = segue.destination as! ThankYou; sendDataVC.firstName = firstName.text; sendDataVC.lastName = lastName.text; sendDataVC.age = age.text; sendDataVC.country = country.text; sendDataVC.city = city.text; sendDataVC.email = email.text; sendDataVC.numberPhone = numberPhone.text
        }
    }
}

//performSegue(withIdentifier: "goVCC", sender: nil)

