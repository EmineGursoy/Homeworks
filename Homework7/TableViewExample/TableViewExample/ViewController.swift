//
//  ViewController.swift
//  TableViewExample
//
//  Created by Emine Sinem on 29.03.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var names = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        names.append("EMİNE")
        names.append("SİNEM")
    }
    
    @IBAction func addClicked(_ sender: Any) {
    
        let alert = UIAlertController(title: "İsminizi giriniz", message: "Listeye eklemek için isminizi giriniz", preferredStyle: UIAlertController.Style.alert)
        
        alert.addTextField { field in
            field.placeholder = "İsminiz"
            field.returnKeyType = .done //klavyede gözükmesini istedigimiz tamam butonu olarak ayarlandi
        }
        
        alert.addAction(UIAlertAction(title: "Ekle", style: UIAlertAction.Style.default, handler: { _ in
            
            //textfield okunur
            if let text = alert.textFields?.first?.text {
                self.names.append(text.uppercased())
                self.tableView.reloadData()
            }
           
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    //cell sayisini döner
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    //cell´i olusturup, icini doldurur
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
