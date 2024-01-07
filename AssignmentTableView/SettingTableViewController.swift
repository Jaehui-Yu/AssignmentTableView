//
//  SettingTableViewController.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/7/24.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let fullSettings = ["공지사항", "실험실", "버전 정보"]
    let personalSettings = ["개인/보안", "알림", "채팅"]
    let etcSettings = ["고객센터/도움말"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return fullSettings.count
        case 1: return personalSettings.count
        case 2: return etcSettings.count
        default: return 0
        }
    }
    
    // 셀 디자인 맟 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text = fullSettings[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = personalSettings[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = etcSettings[indexPath.row]
        } else {
            print("error")
        }
        
        return cell
    }
    
    // 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    // 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // 섹션 헤더 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "전체 설정"
        case 1: return "개인 설정"
        case 2: return "기타"
        default: return "error"
        }
    }

}
