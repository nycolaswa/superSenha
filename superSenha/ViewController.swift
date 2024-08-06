//
//  ViewController.swift
//  superSenha
//
//  Created by Nycolas William de Andrade on 14/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNumberofCharacters: UITextField!
    @IBOutlet weak var tfTotalPasswords: UITextField!
    
    @IBOutlet weak var swLetters: UISwitch!
    
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewControler = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewControler.numberOfCharacters = numberOfPasswords
        }
        if let numberOfcharacters = Int(tfNumberofCharacters.text!) {
            passwordsViewControler.numberOfCharacters = numberOfcharacters
        }
        passwordsViewControler.useLetters = swLetters.isOn
        passwordsViewControler.useNumbers = swNumbers.isOn
        passwordsViewControler.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewControler.useSpecialCharacters = swSpecialCharacters.isOn
        view.endEditing(true)
    }


}

