//
//  ViewController.swift
//  Tabit
//
//  Created by DCS on 02/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

 public var score = 0
private var timer = Timer()
class ViewController: UIViewController {
    private let view1:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 30, y: 80, width: 100, height: 100)
        myview.tag = 1
        return myview
    }()
    private let view2:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 140, y: 80, width: 100, height: 100)
         myview.tag = 2
        return myview
    }()
    private let view3:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 250, y: 80, width: 100, height: 100)
         myview.tag = 3
        return myview
    }()
    private let view4:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 30, y: 200, width: 100, height: 100)
         myview.tag = 4
        return myview
    }()
    private let view5:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 140, y: 200, width: 100, height: 100)
         myview.tag = 5
        return myview
    }()
    private let view6:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 250, y: 200, width: 100, height: 100)
         myview.tag = 6
        return myview
    }()
    private let view7:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 30, y: 320, width: 100, height: 100)
         myview.tag = 7
        return myview
    }()
    private let view8:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 140, y: 320, width: 100, height: 100)
         myview.tag = 8
        return myview
    }()
    private let view9:UIView = {
        let myview = UIView()
        myview.backgroundColor = .gray
        myview.frame = CGRect(x: 250, y: 320, width: 100, height: 100)
         myview.tag = 9
        return myview
    }()
    private let label1:UILabel = {
        let lb = UILabel()
        lb.text = "Score :- "
        lb.font = UIFont.boldSystemFont(ofSize: 25)
        lb.textColor = .white
        lb.frame = CGRect(x: 30, y: 450, width: 300, height: 40)
        return lb
    }()
    private let label2:UILabel = {
        let lb = UILabel()
        lb.text = " 0 "
        lb.font = UIFont.boldSystemFont(ofSize: 25)
        lb.textColor = .white
            lb.frame = CGRect(x: 140, y: 450, width: 300, height: 40)
        return lb
    }()
    
    private let mybtn1:UIButton = {
        let btn = UIButton()
        btn.setTitle("Start", for: .normal)
        btn.backgroundColor = .green
        btn.layer.cornerRadius = 5
        btn.frame = CGRect(x: 100, y: 520, width: 150, height: 40)
        btn.addTarget(self, action: #selector(start), for: .touchUpInside)
        return btn
    }()
    
    private let mybtn2:UIButton = {
        let btn = UIButton()
        btn.setTitle("Stop", for: .normal)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 5
        btn.frame = CGRect(x: 100, y: 520, width: 150, height: 40)
        btn.addTarget(self, action: #selector(stop), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        title = "TabIt "
        view.addSubview(view1)
    view.addSubview(view2)
    view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        
        view.addSubview(view9)
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(mybtn2)
        view.addSubview(mybtn1)
        
        let tab1 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView1))
        tab1.numberOfTapsRequired = 1
        tab1.numberOfTouchesRequired = 1
        let tab2 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView2))
        tab2.numberOfTapsRequired = 1
        tab2.numberOfTouchesRequired = 1
        let tab3 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView3))
        tab3.numberOfTapsRequired = 1
        tab3.numberOfTouchesRequired = 1
        let tab4 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView4))
        tab4.numberOfTapsRequired = 1
        tab4.numberOfTouchesRequired = 1
        let tab5 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView5))
        tab5.numberOfTapsRequired = 1
        tab5.numberOfTouchesRequired = 1
        let tab6 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView6))
        tab6.numberOfTapsRequired = 1
        tab6.numberOfTouchesRequired = 1
        let tab7 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView7))
        tab7.numberOfTapsRequired = 1
        tab7.numberOfTouchesRequired = 1
        let tab8 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView8))
        tab8.numberOfTapsRequired = 1
        tab8.numberOfTouchesRequired = 1
        let tab9 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView9))
        tab9.numberOfTapsRequired = 1
        tab9.numberOfTouchesRequired = 1
        
        
        
        view1.addGestureRecognizer(tab1)
        view2.addGestureRecognizer(tab2)
        view3.addGestureRecognizer(tab3)
        view4.addGestureRecognizer(tab4)
        view5.addGestureRecognizer(tab5)
        view6.addGestureRecognizer(tab6)
        view7.addGestureRecognizer(tab7)
        view8.addGestureRecognizer(tab8)
        view9.addGestureRecognizer(tab9)
        
        
           }

    @objc func start(){
        
        mybtn1.isHidden = true
        mybtn2.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(gamestart), userInfo: .none, repeats: true)
        
        
    }
    @objc func gamestart()
    {
        let index = [1,2,3,4,5,6,7,8,9]
        let rmindex = index.randomElement()
        if rmindex == 1 {
            view1.backgroundColor = .red
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
           
        }else if rmindex == 2{
            view1.backgroundColor = .gray
            view2.backgroundColor = .red
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }else if rmindex == 3{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .red
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }
        else if rmindex == 4{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .red
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }
        else if rmindex == 5{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .red
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }else if rmindex == 6{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .red
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }
        else if rmindex == 7{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .red
            view8.backgroundColor = .gray
            view9.backgroundColor = .gray
        }else if rmindex == 8{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .red
            view9.backgroundColor = .gray
        }
        else if rmindex == 9{
            view1.backgroundColor = .gray
            view2.backgroundColor = .gray
            view3.backgroundColor = .gray
            view4.backgroundColor = .gray
            view5.backgroundColor = .gray
            view6.backgroundColor = .gray
            view7.backgroundColor = .gray
            view8.backgroundColor = .gray
            view9.backgroundColor = .red
        }
        
    }
    @objc func stop(){
        
        view1.backgroundColor = .blue
        view2.backgroundColor = .blue
        view3.backgroundColor = .blue
        view4.backgroundColor = .blue
        view5.backgroundColor = .blue
        view6.backgroundColor = .blue
        view7.backgroundColor = .blue
        view8.backgroundColor = .blue
        view9.backgroundColor = .blue
        timer.invalidate()
        
        var username = ""
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Congo", message: "Enter your name", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "Some default text"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            username = textField?.text ?? ""
            print(username)
            UserDefaults.standard.setValue("123abc", forKey:"usertoken")
            UserDefaults.standard.setValue(username, forKey:"username")
            UserDefaults.standard.setValue(score, forKey:"score")
            
            let vc = LeaderboardVC()
            
            self.navigationController?.pushViewController(vc, animated: true)
            
            
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
 
        
    }
    
}
extension ViewController {
    
    @objc private func checkScoreView1(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view1.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view2.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view3.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view4.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view5.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view6.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view7.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view8.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view9.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    
    
}
