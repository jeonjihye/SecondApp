//
//  IndigoViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class IndigoViewController: UIViewController {
    
    var tearVC : TearViewController?
   

    @IBOutlet weak var IndigoTextField: UITextField!
    
    @IBAction func confirm(_ sender: Any) {
        tearVC?.resultText = IndigoTextField.text
    }
    // 최초에만 호출된다 > Appear함수를 사용해야함
    override func viewDidLoad() {
        super.viewDidLoad()
        // Observer 등록
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackColor(_:)), name: Notification.Name("ChangeBackcolor"), object: nil)

        // Do any additional setup after loading the view.
    }
    
    @objc func changeBackColor(_ notification : Notification) {
        self.view.backgroundColor = UIColor.red
        
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
