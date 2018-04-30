//
//  ViewController.swift
//  Simple TableView
//
//  Created by D7703_06 on 2018. 4. 30..
//  Copyright © 2018년 IceArrow. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    var data = ["강아지","호랑이","기니피그"]
    var subdata = ["1","2","3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        //셀 갯수 지정
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "RE"
        //임시 저장소 셍성
        let cell = myTable.dequeueReusableCell(withIdentifier: indentifier, for: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        cell.detailTextLabel?.text = subdata[indexPath.row]
        //date,subdate의 안에 있는 값을 텍스트에 출력
        let myImg = UIImage(named:"\(indexPath.row+1).jpeg")
        cell.imageView?.image = myImg
        //이미지출력
        return cell
    }

}

