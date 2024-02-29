//
//  User.swift
//  TodoApp
//
//  Created by Rüstem Pek on 18.02.2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
