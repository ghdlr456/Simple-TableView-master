
import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var myTable: UITableView!
    var data = ["강아지","호랑이","기니피그"]
    var subdata = ["한국","영국","미국"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
     return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "1st Section"
        } else {
            return "2nd Section"
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let myAlert = UIAlertController(title: "AlertController", message:"Test", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "CANCEL", style: .cancel, handler: { (action: UIAlertAction) -> Void in
        })
        
        let okAction = UIAlertAction(title: "0 Section1 Row Seclected", style: .default) { (action: UIAlertAction) -> Void in
        }
        
        myAlert.addAction(cancelAction)
        myAlert.addAction(okAction)
        
        present(myAlert, animated: true, completion: nil)
    }
    
    //row 와 height 연결
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            return 100.0
        
    }
        
    }



