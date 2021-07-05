//
//  LeaderboardVC.swift
//  Tabit
//
//  Created by DCS on 03/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController {

    let usertoken = UserDefaults.standard.string(forKey: "usertoken")
    let username = UserDefaults.standard.string(forKey: "username")
    let score = UserDefaults.standard.string(forKey: "score")
    
    private let label1:UILabel = {
        let lb = UILabel()
        lb.text = ""
        lb.font = UIFont.boldSystemFont(ofSize: 25)
        lb.textColor = .white
       
        return lb
    }()
    
    private let label2:UILabel = {
        let lb = UILabel()
        lb.text = "Score "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label3:UILabel = {
        let lb = UILabel()
        lb.text = "UeserName  "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label4:UILabel = {
        let lb = UILabel()
        lb.text = " "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label5:UILabel = {
        let lb = UILabel()
        lb.text = "  "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let  mybg:UIImageView   = {
        let img = UIImageView(image:UIImage( named: "trophy"))
        img.contentMode = .scaleAspectFill
        img.layer.cornerRadius = 100
        img.clipsToBounds = true
        return img
    }()
     override func viewDidLoad() {
        super.viewDidLoad()
        title = "TabIt "
        view.backgroundColor = .black
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(mybg)
        label1.text = "Congtulation " + username!
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
         label4.text = username
         label5.text = score
    print(score!)
        
    }
    
   
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
            label1.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
           mybg.frame = CGRect(x: view.width / 2 - 100, y: label1.bottom + 50, width: 200, height:200)
            label3.frame = CGRect(x: view.width - 120, y: mybg.bottom + 30 , width: 300, height: 40)
            label2.frame = CGRect(x: 30, y: mybg.bottom + 30 , width: 300, height: 40)
        label5.frame = CGRect(x: view.width - 100, y: label3.bottom + 30 , width: 300, height: 40)
        label4.frame = CGRect(x: 30, y: label3.bottom + 30 , width: 300, height: 40)
    }
  

}
