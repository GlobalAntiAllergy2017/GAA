//
//  ViewController.swift
//  GAA
//
//  Created by Sarah Pisini on 11/11/17.
//  Copyright © 2017 Sarah Pisini. All rights reserved.
//

import UIKit

class ViewControllerProfile: UIViewController {
    //let thisperson = User()

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var dob: UITextField!
    
    @IBOutlet weak var gender: UITextField!
    
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var weight: UITextField!
    
    
    @IBOutlet weak var contact: UITextField!
    

    @IBOutlet weak var insert: UIButton!
    
    @IBAction func insert(_ sender: Any) {
     //var names: [String] = []
        if name.text != "" {
            //thisperson.name = name.text!
            
            let defaults = UserDefaults.standard
            defaults.set(name.text!, forKey: "recNames")
            print("added: \(name.text!)")
            defaults.set(dob.text!, forKey: "recDob")
            print("added: \(dob.text!)")
            defaults.set(gender.text!, forKey: "recGender")
            print("added: \(gender.text!)")
            defaults.set(height.text!, forKey: "recHeight")
            print("added: \(height.text!)")
            defaults.set(weight.text!, forKey: "recWeight")
            print("added: \(weight.text!)")
            defaults.set(contact.text!, forKey: "recContact")
            print("added: \(contact.text!)")
            
            
            
            
            
            
           // names.append(name.text!)

            //user default
           // let defaults = UserDefaults.standard
           // defaults.set(names, forKey: "recNames")
            
            //set global
            let globals:GlobalData = GlobalData.sharedInstance
            globals.name = name.text!
            globals.name = dob.text!
            globals.name = gender.text!
            globals.name = height.text!
            globals.name = weight.text!
            globals.name = contact.text!
            
        
            
            name.text! = ""
            dob.text! = ""
            gender.text! = ""
            height.text! = ""
            weight.text! = ""
            contact.text! = ""
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text! = "Default Sarah"
        dob.text! = "xx xx xxxx"
        gender.text! = "F"
        height.text! = "x"
        weight.text! = "x"
        contact.text! = "xxx xxx xxxx"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

