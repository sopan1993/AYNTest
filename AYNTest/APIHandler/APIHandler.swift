//
//  APIHandler.swift
//  AYNTest
//
//  Created by Shirish Vispute on 09/07/19.
//  Copyright © 2019 Shirish Vispute. All rights reserved.
//

import Foundation
import UIKit

class APIHandler{
    
    static let mainUrl = "https://reqres.in/api/users"
    
    func getUserData(url:String,completion: @escaping (UserInfo) -> ()){
        
        let url = URL(string: url)!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No data")
                return
            }
            do {
                let decoder = JSONDecoder()
                let userDataModel = try decoder.decode(UserInfo.self, from: data)
                completion(userDataModel)
            } catch {
                print("json error: \(error)")
            }
        }
        task.resume()
    }
    
}

