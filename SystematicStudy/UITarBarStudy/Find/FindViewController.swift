//
//  FindViewController.swift
//  SystematicStudy
//
//  Created by top on 2017/11/23.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {
    
    var redView: UIView!
    var yellowView: UIView!
    var grayView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        redView = UIView()
        redView.backgroundColor = UIColor.red
        self.view.addSubview(redView)
        //使用自动布局的前提，关闭AutoresizingMask
        redView.translatesAutoresizingMaskIntoConstraints = false
        let topConstraint = NSLayoutConstraint(item: redView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 100)
        let leftConstraint = NSLayoutConstraint(item: redView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 100)
        let width = NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100)
        let height = NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100)
        self.view.addConstraints([topConstraint, leftConstraint])
        redView.addConstraints([width,height])
        yellowView = UIView()
        yellowView.backgroundColor = UIColor.yellow
        self.view.addSubview(yellowView)
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        let yellowTopConstaint = NSLayoutConstraint(item: yellowView, attribute: .top, relatedBy: .equal, toItem: redView, attribute: .bottom, multiplier: 1, constant: 20)
        let yellowLeftConstaint = NSLayoutConstraint(item: yellowView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 100)
        let yellowWidth = NSLayoutConstraint(item: yellowView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100)
        let yellowHeight = NSLayoutConstraint(item: yellowView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 100)
        yellowView.addConstraints([yellowWidth, yellowHeight])
        self.view.addConstraints([yellowTopConstaint, yellowLeftConstaint])
        
        grayView = UIView()
        grayView.backgroundColor = UIColor.gray
        yellowView.addSubview(grayView)
        grayView.translatesAutoresizingMaskIntoConstraints = false
        let grayTopConstaint = NSLayoutConstraint(item: grayView, attribute: .top, relatedBy: .equal, toItem: yellowView, attribute: .top, multiplier: 1, constant: 25)
        let grayLeftConstaint = NSLayoutConstraint(item: grayView, attribute: .left, relatedBy: .equal, toItem: grayView.superview, attribute: .left, multiplier: 1, constant: 25)
        let grayWidth = NSLayoutConstraint(item: grayView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 50)
        let grayHeight = NSLayoutConstraint(item: grayView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: 50)
        yellowView.addConstraints([grayTopConstaint, grayLeftConstaint, grayWidth, grayHeight])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
