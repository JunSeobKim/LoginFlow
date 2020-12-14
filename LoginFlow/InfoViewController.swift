//
//  InfoViewController.swift
//  LoginFlow
//
//  Created by 김준섭 on 2020/12/11.
//

import UIKit

class InfoViewController: UIViewController {
    
    var loginInfo: LoginInfo?

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("InfoViewController 객체의 뷰가 나타날 예정")
        
        guard let info = self.loginInfo else { return }
        
        emailLabel.text = info.email
        passwordLabel.text = info.password
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
