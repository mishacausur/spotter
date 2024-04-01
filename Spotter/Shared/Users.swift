//
//  Users.swift
//  Spotter
//
//  Created by Misha Causur on 31.03.2024.
//

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let height: Int
    let weight: Double
}

