//
//  User.swift
//  SearchBarExample
//
//  Created by Emine Sinem on 30.03.2023.
//

import Foundation
struct User: Decodable {
    let name: String?
    let username: String?
    let email: String?
    let company: Company?
}

struct Company: Decodable {
    let name: String?
}
