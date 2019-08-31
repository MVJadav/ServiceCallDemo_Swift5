//
//  ViewController.swift
//  ServiceCallDemo
//
//  Created by Mehul Jadav.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IBuserTbl : UITableView!
    
    private var driverCompanyViewModel = DriverCompanyViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.driverCompanyViewModel.getMyDriverCompanyList { (success, error) in
            if success == true {
                //self.lblNotFound.isHidden = self.driverCompanyViewModel.arrDriverCompanyModel.count > 0
                self.IBuserTbl.reloadData()
            }
        }
    }
}

//MARK:- IBAction Methods.
extension ViewController {
    
    @IBAction func barbtnAddClick(sender: AnyObject) {
//        let addUser = App.Storyboard.main.instantiateVC(AddUserViewController.self)!
//        addUser.delegate = self
//        AppUtility.default.navigationController!.pushViewController(addUser, animated: true)
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        /*if( self.objUser.count > 0 ){
            return self.objUser.count
        }*/
        return self.driverCompanyViewModel.arrDriverCompanyModel.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:TableViewCell? = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        if (cell == nil) {
            let nib: NSArray = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)! as NSArray
            cell = nib.object(at: 0) as? TableViewCell
        }
        cell?.selectionStyle = .none
        cell?.driverCompanyModel = self.driverCompanyViewModel.arrDriverCompanyModel[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        /*let addUser = App.Storyboard.main.instantiateVC(AddUserViewController.self)!
        addUser.userId = self.objUser[indexPath.row].userId!
        addUser.objUserModel = self.objUser[indexPath.row]
        addUser.delegate = self
        AppUtility.default.navigationController!.pushViewController(addUser, animated: true)*/
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

}
