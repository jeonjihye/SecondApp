//
//  ThirdViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var thirdViewControllerData : String?

    override func viewDidLoad() {
        super.viewDidLoad()
        thirdViewControllerData = "ThirdViewData"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Post(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("ChangeBackcolor"), object: nil,userInfo: nil)
        
  
        // 1) 제일 첫 화면으로 돌아가게 된다.
        self.navigationController?.popToRootViewController(animated: true)
        /*
        // 2) 강제적으로 화면 전환
        self.navigationController?.popToViewController(self.navigationController?.viewControllers[2], animated: true)
        */
        
 }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
