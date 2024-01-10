//
//  TravelTableViewController.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/8/24.
//

import UIKit
import Kingfisher

class TravelTableViewController: UITableViewController {
    
    let magazineInfo = MagazineInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셀 높이
        tableView.rowHeight = UITableView.automaticDimension
    }

    // 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magazineInfo.magazine.count
    }
    
    // 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TravelCell", for: indexPath) as! TravelTableViewCell
        let row = magazineInfo.magazine[indexPath.row]
        
        cell.configureCell(data: row)
    
        return cell
    }

}
