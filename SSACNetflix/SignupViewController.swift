//
//  SignupViewController.swift
//  SSACNetflix
//
//  Created by Sang hun Lee on 2021/09/30.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet var inputID: UITextField!
    @IBOutlet var inputPW: UITextField!
    @IBOutlet var inputName: UITextField!
    @IBOutlet var inputLocation: UITextField!
    @IBOutlet var inputRecommendCode: UITextField!
    @IBOutlet var joinBtn: UIButton!
    @IBOutlet var additionalBtn: UISwitch!
    
    @IBAction func handleOuterClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputID.layer.cornerRadius = 10
        inputID.layer.borderWidth = 1
        inputID.clipsToBounds = true
        inputID.keyboardType = .default
        
        inputPW.layer.cornerRadius = 10
        inputPW.layer.borderWidth = 1
        inputPW.clipsToBounds = true
        inputPW.keyboardType = .default

        inputName.layer.cornerRadius = 10
        inputName.layer.borderWidth = 1
        inputName.clipsToBounds = true
        inputName.keyboardType = .default

        inputLocation.layer.cornerRadius = 10
        inputLocation.layer.borderWidth = 1
        inputLocation.clipsToBounds = true
        inputLocation.keyboardType = .default

        inputRecommendCode.layer.cornerRadius = 10
        inputRecommendCode.layer.borderWidth = 1
        inputRecommendCode.clipsToBounds = true
        inputRecommendCode.keyboardType = .default
        
        joinBtn.layer.cornerRadius = 10
        joinBtn.clipsToBounds = true
        joinBtn.backgroundColor = UIColor.white
        joinBtn.setTitle("회원가입", for: .normal)
        joinBtn.setTitleColor(UIColor.black, for: .normal)
    }
    @IBAction func changeInputView(_ sender: UISwitch) {
        inputName.isHidden = !inputName.isHidden
        inputLocation.isHidden = !inputLocation.isHidden
        inputRecommendCode.isHidden = !inputRecommendCode.isHidden
    }
    @IBAction func checkSigninInfo(_ sender: UIButton) {
        if ( inputID.text == "" || inputPW.text == "") {
            return print("ID와 비밀번호는 필수로 입력되어야 합니다.")
        } else if (inputPW.text!.count < 6) {
            return print("비밀번호는 최소 6자리 이상 입력되어야 합니다.")
        }
        
        print("""
              ID: \(inputID.text!)
              PW: \(inputPW.text!)
              NICK: \(inputName.text!)
              LOCATION: \(inputLocation.text!)
              CODE: \(inputRecommendCode.text!)
              """)
        inputID.text = ""
        inputPW.text = ""
        inputName.text = ""
        inputLocation.text = ""
        inputRecommendCode.text = ""
        
    }
    
}
