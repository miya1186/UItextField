//
//  ViewController.swift
//  UITextFiled
//
//  Created by miyazawaryohei on 2020/10/08.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet var myTextField: UITextField!
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
       
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let tmpStr = textField.text! as NSString
        let replacedString = tmpStr.replacingCharacters(in: range, with: string)
        if replacedString == "" {
            myLabel.text = "0"
        }else{
            if let num = Int(replacedString) {
                myLabel.text = String(num * 25)
            }
        }
    return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myLabel.text = "0"
        return true
    }
    
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}

