//
//  UserListVC.swift
//  AYNTest
//
//  Created by Shirish Vispute on 10/06/19.
//  Copyright © 2019 Shirish Vispute. All rights reserved.
//

import UIKit

class UserListVC: UIViewController {

    
    @IBOutlet var userTableView: UITableView!
    
    var userArr: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userTableView.dataSource = self
        APIHandler().getUserData(url: APIHandler.mainUrl){ (userModel) in
            
            self.userArr.append(contentsOf: userModel.data)
            DispatchQueue.main.async {self.userTableView.reloadData()}
        }
        
    }
    
}
extension UserListVC: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.userTableView.dequeueReusableCell(withIdentifier: "UserTableCell", for: indexPath) as! UserTableCell
        cell.setData(model:self.userArr[indexPath.row])
        return cell
        
    }
}
