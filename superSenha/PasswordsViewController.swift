//
//  PasswordsViewController.swift
//  superSenha
//
//  Created by Nycolas William de Andrade on 17/07/24.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers:Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator (numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
       
        generatePasswords()
        
        }
        func generatePasswords() {
            tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
            tvPasswords.text = ""
            let passwords = passwordGenerator.generate(total: numberOfPasswords)
            for password in passwords {
                tvPasswords.text.append(password + "\n\n")
        }
    }
    
    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
    
}
