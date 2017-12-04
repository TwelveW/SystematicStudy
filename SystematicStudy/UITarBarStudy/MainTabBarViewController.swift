//
//  MainTabBarViewController.swift
//  SystematicStudy
//
//  Created by top on 2017/11/23.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let meVC = MeViewController()
        meVC.title = "我"
        let findVC = FindViewController()
        findVC.title = "发现"
        let addressBookVC = UIStoryboard(name: "UITabBarStudy", bundle: nil).instantiateViewController(withIdentifier: "AddressBookVC")
        addressBookVC.title = "联系人"
        let messageVC = MessageViewController()
        messageVC.title = "消息"

        let rootMe = UINavigationController(rootViewController: meVC)
        rootMe.tabBarItem.image = #imageLiteral(resourceName: "Smile")
        let rootFind = UINavigationController(rootViewController: findVC)
        rootFind.tabBarItem.image = #imageLiteral(resourceName: "favorite")
        let rootAddressBook = UINavigationController(rootViewController: addressBookVC)
        rootAddressBook.tabBarItem.image = #imageLiteral(resourceName: "account")
        let rootMessage = UINavigationController(rootViewController: messageVC)
        rootMessage.tabBarItem.image = #imageLiteral(resourceName: "comments")
        
        self.tabBar.tintColor = UIColor.green
        self.viewControllers = [rootMessage, rootAddressBook, rootFind, rootMe]
        self.selectedIndex = 0
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
