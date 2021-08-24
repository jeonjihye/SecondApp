//
//  LoginViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//

import UIKit

protocol LoginReusltProtocol {
    func setId(id : String)
}

class LoginViewController: UIViewController {
    
    var loginInfo : Dictionary<String,String> = [:]
    // 로그인화면을 오픈한 ViewContorller 인스턴스 할당하는 변수
    var resultViewController : LoginReusltProtocol?
    
    
    @IBOutlet weak var IdTextFiled: UITextField!
    @IBOutlet weak var passwardTextField: UITextField!
    
    
    @IBAction func cancel(_ sender: Any) {
        // 아무것도 해주지 말기
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func login(_ sender: Any) {
        // id&pw 값 전달
        var id = IdTextFiled.text
        var pw = passwardTextField.text
        
        guard let idValue = IdTextFiled.text,
              let pwValue = passwardTextField.text else {
            return
        }
        
        self.resultViewController?.setId(id : idValue)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var cancel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 데이터전달
        
        

        // Do any additional setup after loading the view.
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
