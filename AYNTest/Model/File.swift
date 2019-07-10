//
//  File.swift
//  AYNTest
//
//  Created by Shirish Vispute on 10/06/19.
//  Copyright © 2019 Shirish Vispute. All rights reserved.
//

import Foundation

// MARK: - Welcome
class UserInfo: Codable {
    let page, perPage, total, totalPages: Int
    let data: [Data]
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data
    }
}

// MARK: - Datum
class Data: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
    
    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}
