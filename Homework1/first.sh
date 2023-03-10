#!/usr/bin/env swift
import Foundation

var users = ["Batuhan", "Tunahan", "Mertcan"]
var reversedUsers = Array(users.sorted().reversed())

for i in 0...reversedUsers.count-1{
    reversedUsers[i] = reversedUsers[i].uppercased()
}

print(reversedUsers)
