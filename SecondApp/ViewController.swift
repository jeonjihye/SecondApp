//
//  ViewController.swift
//  SecondApp
//
//  Created by Admin on 2021/08/23.
//
//

import UIKit

class ViewController: UIViewController, LoginReusltProtocol  {
    func setId(id: String) {
        self.idLabel.text = id
    }

    // 아이디를 띄울 라벨
    @IBOutlet weak var idLabel: UILabel!
    //var idText : String?
    
     
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
    
    // 코드로 모달 띄우기
    @IBAction func openLogin(_ sender: Any) {
        /*
        // if 문 > 코드 안에서만 사용가능
        if let loginVC1 = self.storyboard?.instantiateViewController(identifier: "login"){
            
            loginVC1
        }
        */
        // Guard 문 > 코드 밖에서만 사용가능
        guard let loginVC = self.storyboard?.instantiateViewController(identifier: "login") as? LoginViewController else{
            return
        }
        // 1) 모달형태로 띄우기
        loginVC.resultViewController = self
        self.present(loginVC, animated: true ,completion: nil)
        
        // 2) Push로 띄우기 : 네비게이션 컨트롤러에게 요청
        //self.navigationController?.pushViewController(loginVC, animated: true)

        
    }
    // 아이디 라벨에 아이디 출력
    // 모달은 viewWillAppear 호출 안됨
    /*
    override func viewWillAppear(_ animated: Bool) {
        idLabel.text = idText
    }
    */
    

}

