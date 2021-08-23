//
//  ViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//
//

import UIKit

class ViewController: UIViewController {

    // 코드로 모달 띄우기
    @IBAction func openLogin(_ sender: Any) {
        var loginVC = self.storyboard?.instantiateViewController(identifier: "login")
        
    }
    
    
    @IBOutlet weak var firstLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondViewController{
            vc.data = "Hello"
        }
    }
    // 원래있는 화면으로 데이터를 되돌려주는 방법
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as?
            ThirdViewController {
            
            firstLabel.text = sourceViewController.thirdViewControllerData
            
        }


        // Use data from the view controller which initiated the unwind segue
    }


}

