//
//  NotificationListenerViewController.swift
//  NotificationCenterExample
//
//  Created by Emine Sinem on 29.03.2023.
//

import UIKit

class NotificationListenerViewController: UIViewController {
    @IBOutlet weak var listenerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let notificationCenter: NotificationCenter = .default
        notificationCenter.addObserver(self, selector: #selector(changeText(text:)), name: .sendDataNotification, object: nil)    }
    
    @IBAction func changeTextClicked(_ sender: Any) {
    }
    
    @objc func changeText(text: Notification) {
        if let userInfo = text.userInfo {
            let newText = userInfo["text"] as! String
            self.listenerLabel.text = newText
        }
    }
}
