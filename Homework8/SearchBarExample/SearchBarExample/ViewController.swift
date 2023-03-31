//
//  ViewController.swift
//  SearchBarExample
//
//  Created by Emine Sinem on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    
    var users = [User]()
    var filteredUsers = [User]()
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Search"
        tableView.delegate = self
        tableView.dataSource = self
        
        let urlStr = "https://jsonplaceholder.typicode.com/users"
        guard let userURL = URL(string: urlStr) else { return }
        let userList = try? JSONDecoder().decode([User].self, from: Data(contentsOf: userURL))
        guard let users = userList else { return }
        self.users = users

        print(users.first?.name)
        tableView.reloadData()
    }
    
    private func searchBarConfig() {
        searchController.searchBar.placeholder = "Search User"
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = true
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    func filterContextForSearhText(searchText: String) {
        filteredUsers = users.filter({(user:User) -> Bool in
            return user.name?.lowercased().contains(searchText.lowercased()) ?? false
        })
        tableView.reloadData()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering {
            return filteredUsers.count
        }
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "userCell")!
        
        let user: User
        
        if isFiltering {
            user = filteredUsers[indexPath.row]
        } else {
            user = users[indexPath.row]
        }
        
        cell.textLabel?.text = users[indexPath.row].name
        return cell
        
    }
    
    
}
extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text!
        filterContextForSearhText(searchText: searchText)
    }
}
