//
//  ViewController.swift
//  UserDefaults
//
//  Created by David Valenzuela Pardo on 21/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func saveButton(_ sender: UIButton) {
        if textLabel.text == "" {
            let alert = UIAlertController(title: "Alerta", message: "Escribe Algo", preferredStyle: .alert)
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }else{
            UserDefaults.standard.set(textLabel.text, forKey: "valor")
            textLabel.text = ""
            textLabel.resignFirstResponder()
        }
       
    }
    
    @IBAction func ShowAction(_ sender: UIButton) {
        let result  =  UserDefaults.standard.object(forKey: "valor")
        textLabel.text = result as? String
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

