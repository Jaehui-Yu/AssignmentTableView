//
//  ShoppingTableViewController.swift
//  AssignmentTableView
//
//  Created by Jaehui Yu on 1/7/24.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var submitButton: UIButton!
    
    var list = ["양파", "소금", "비누"]
    var text = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        submitButton.setTitle("추가", for: .normal)
        submitButton.tintColor = .black
        submitButton.backgroundColor = .lightGray.withAlphaComponent(0.5)
        submitButton.layer.cornerRadius = 10
        
        userTextField.backgroundColor = .systemGray6
    }
    
    @IBAction func userTextFieldReturnTapped(_ sender: UITextField) {
        print("키보드 내려감")
    }
    
    @IBAction func changedUserTextField(_ sender: UITextField) {
        if let text = userTextField.text {
            self.text = text
        } else {
            print("값을 제대로 입력해주세요")
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if userTextField.text != "" {
            list.append(text)
        } else {
            print("아무것도 입력하지 않았습니다.")
        }
        tableView.reloadData()
        userTextField.text = ""
    }
    
    // 셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    // 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell", for: indexPath) as! ShoppingTableViewCell
        
        cell.itemLabel.text = list[indexPath.row]
        cell.checkImageView.image = UIImage(systemName: "checkmark.square.fill")
        cell.starImageView.image = UIImage(systemName: "star.fill")
        cell.tintColor = .black
                
        return cell
    }
    
    // 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    // 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 섹션 헤더 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "쇼핑 리스트"
    }
    
    // 셀 편집 가능 여부
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    // 셀 편집 종류
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        tableView.reloadData()
    }

}
