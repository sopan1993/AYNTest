//
//  UserTableCell.swift
//  AYNTest
//
//  Created by Shirish Vispute on 09/07/19.
//  Copyright © 2019 Shirish Vispute. All rights reserved.
//

import UIKit

class UserTableCell: UITableViewCell {

    
    @IBOutlet var imgPhoto: UIImageView!
    @IBOutlet var lblFirstName: UILabel!
    @IBOutlet var lblLastName: UILabel!
    
    
    func setData(model:Data?){
        if model != nil{
           lblFirstName.text = model?.firstName
           lblLastName.text = model?.lastName
           imgPhoto.downloadImageFromServerURL(urlString: model?.avatar ?? "")
           imgPhoto.layer.cornerRadius = imgPhoto.frame.height/2
        }
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
