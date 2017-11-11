//
//  ViewControllerFood.swift
//  GAA
//
//  Created by Sarah Pisini on 11/11/17.
//  Copyright © 2017 Sarah Pisini. All rights reserved.
//

import UIKit

class ViewControllerFood: UIViewController {

    @IBOutlet weak var dairy: UISwitch!
    @IBOutlet weak var peanut: UISwitch!
    @IBOutlet weak var egg: UISwitch!
    @IBOutlet weak var wheat: UISwitch!
    @IBOutlet weak var seafood: UISwitch!
    @IBOutlet weak var soy: UISwitch!

    @IBOutlet weak var addFood: UIButton!
    
    
    @IBAction func dairySwitch(_ sender: UISwitch) {
        

        UserDefaults.standard.set(sender.isOn, forKey: "dairySwitch")
    print("dairy - added? ", sender.isOn)
        
    /*//https://stackoverflow.com/questions/42478132/saving-and-retrieving-a-bool-with-userdefaults*/
        
    }
    @IBAction func addFood(_ sender: Any) {
        // to do - go back to profile page
        //navigationController!.popViewControllerAnimated(true)
        
        self.dismiss(animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
