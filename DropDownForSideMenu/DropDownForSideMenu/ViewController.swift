//
//  ViewController.swift
//  DropDownForSideMenu
//
//  Created by jabeed on 12/09/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    
    @IBOutlet var andhri: [UIButton]!
    
    @IBOutlet weak var imageDown: UIButton!
    
    @IBOutlet weak var imageTop: UIButton!
    @IBOutlet weak var tblView: UITableView!
    
    
    var arrList = ["Summary","Assignment","Exam","Resume"]
   // var nameOfString = ["Andhri"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.isHidden = true
        //self.btnDrop.titleLabel?.text = "jabeed"
        // Do any additional setup after loading the view.
    }

    
    @IBAction func OnClickButton(_ sender: Any) {
        if tblView.isHidden  {
            animate(toogle: true)
            
        }else {
            animate(toogle: false)
        }
        
    }
    func animate(toogle:Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tblView.isHidden = false
                self.tblView.frame = CGRect(x: 0, y: self.tblView.frame.origin.y, width: self.tblView.frame.width, height: 260)
                self.view.bringSubviewToFront(self.tblView)
            }
        }else {
            UIView.animate(withDuration: 0.3) {
                self.tblView.isHidden = true
            }
            
        }
        
        if andhri != andhri {
            self.andhri.forEach {(button) in
                
                button.isHidden = !button.isHidden
                
                
            }
            
            
        }
        
    }
    
    
    @IBAction func onClickImageDown(_ sender: Any) {
        
        
    }
    
    @IBAction func onClickImageTop(_ sender: Any) {
        
       
    }
    
    

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell .textLabel?.text = arrList[indexPath.row]
        cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        cell.textLabel?.textAlignment = .left
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentString = arrList[indexPath.row]
        print(currentString)
        
        
    }
}
