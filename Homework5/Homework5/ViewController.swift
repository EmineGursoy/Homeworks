//
//  ViewController.swift
//  Homework5
//
//  Created by Emine Sinem on 23.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nicknameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClicked(_ sender: Any) {
        if nicknameTextField.text! == "" {
            makeAlert(titleInput: "Hata", messageInput: "Kullanıcı adınızı giriniz!")
        } else {
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController // Bu noktada SecondViewController olusturulmus oluyor
            let nickname = nicknameTextField.text!.uppercased() 
            
            destinationVC.game = Game(  //Game classindan game nesnesi olusturuldu
                player: Player(nickname: nickname),
                cannon: Cannon(),
                bottle: Bottle()
            )
        }
    }
    
    func makeAlert(titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
            
    }
            
}

