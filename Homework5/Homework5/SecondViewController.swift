//
//  SecondViewController.swift
//  Homework5
//
//  Created by Emine Sinem on 23.03.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var launchSpeedTextField: UITextField!
    @IBOutlet weak var placementAngleTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    
    var game: Game? //Game classindan bir property tanimlandi
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateLabel.isHidden = true
        
        nicknameLabel.text = game?.player.nickname
        setPointLabel()
    }
    
    func setPointLabel() {
        pointLabel.text = "Puan: \(game!.player.points)" //pointLabel set edildi
    }
    
    @IBAction func throwClicked(_ sender: Any) {
        
          if locationTextField.text! == "" || (Double(locationTextField.text!) ?? 0) < 0 || (Double(locationTextField.text!) ?? 0) > 1500 {
              makeAlert(titleInput: "Hata", messageInput: "Lütfen 0 ile 1500 arasında konumu giriniz!")
          } else if launchSpeedTextField.text! == "" || (Double(launchSpeedTextField.text!) ?? 0) < 0 || (Double(launchSpeedTextField.text!) ?? 0)  > 100 {
              makeAlert(titleInput: "Hata", messageInput: "Lütfen 0 ile 100 arasında hızı giriniz!")
          } else if placementAngleTextField.text! == "" || (Double(placementAngleTextField.text!) ?? 0) < 0 || (Double(placementAngleTextField.text!) ?? 0) > 90 {
              makeAlert(titleInput: "Hata", messageInput: "Lütfen 0 ile 90 arasında açıyı giriniz!")
          } else {
              let location = Double(locationTextField.text!)!
              let launchSpeed = Double(launchSpeedTextField.text!)!
              let placementAngle = Double(placementAngleTextField.text!)!
              
            game?.bottle.d = location //game nesnesinin bottle propertysinin uzaklik(d) propertysine girilen konum bilgisi eklendi
            game?.cannon.v = launchSpeed
            game?.cannon.teta = placementAngle
            
            game?.play() //game nesnesinin play fonksiyonu calistirildi
              
            if game!.bottle.isStanding { // devrilmedi, ayakta
                stateLabel.isHidden = false
                stateLabel.text = "Üzgünüz vuramadınız!"
            } else { // devrildi
                setPointLabel()
                stateLabel.isHidden = false
                stateLabel.text = "Tebrikler vurdunuz!"
            }
              
          }
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
   
}
