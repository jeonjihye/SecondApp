//
//  TearViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

class TearViewController: UIViewController {

    @IBOutlet weak var tearLabel: UILabel!
    
    var resultText : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tearLabel.text = resultText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 참이 아닐 경우 실행
        guard let vc = segue.destination as? IndigoViewController else {
                return
        }
        vc.tearVC = self
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
