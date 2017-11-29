//
//  ViewController.swift
//  Quiz20Ssept
//
//  Created by abdul fatah on 9/20/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputWord: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCheck(_ sender: Any) {
        if inputWord.text == "A" {
            let alertDialog = UIAlertController(title: "CODE A", message: "This is Sports equipment", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
        }else if inputWord.text == "B" {
            let alertDialog = UIAlertController(title: "CODE B" ,message: "This is Electronic Equipment", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil )
        }else if inputWord.text == "C" {
            let alertDialog = UIAlertController(title: "CODE C", message: "This is Cook equipment", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
        }else if inputWord.text == "D" {
            let alertDialog = UIAlertController(title: "CODE D", message: "This is Machine Equipment", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
        }else if inputWord.text == "" {
            let alertDialog = UIAlertController(title: "WARNING!", message: "Words Can't be Empty", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

