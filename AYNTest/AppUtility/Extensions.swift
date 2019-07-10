//
//  Extensions.swift
//  AYNTest
//
//  Created by Shirish Vispute on 10/07/19.
//  Copyright © 2019 Shirish Vispute. All rights reserved.
//

import Foundation
import UIKit


extension UIImageView {
    public func downloadImageFromServerURL(urlString: String) {
        self.image = nil
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }}
