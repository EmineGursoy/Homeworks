//
//  NotificationSenderViewController.swift
//  NotificationCenterExample
//
//  Created by Emine Sinem on 29.03.2023.
//

import UIKit

class NotificationSenderViewController: UIViewController {

    @IBOutlet weak var senderTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendTextClicked(_ sender: Any) {
        let text = senderTextView.text!
        
        NotificationCenter.default.post(name: .sendDataNotification, object: nil, userInfo: ["text": text])
        dismiss(animated: true)
    }
    

}
