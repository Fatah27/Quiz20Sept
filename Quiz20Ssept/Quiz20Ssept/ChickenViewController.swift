//
//  ChickenViewController.swift
//  Quiz20Ssept
//
//  Created by abdul fatah on 9/20/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class ChickenViewController: UIViewController {
    @IBOutlet weak var lblBefore: UILabel!
    @IBOutlet weak var lblDiscount: UILabel!
    @IBOutlet weak var lblAfter: UILabel!
    @IBOutlet weak var inputEggs: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBuy(_ sender: Any) {
        var egg : Double? = Double(inputEggs.text!)
        if inputEggs.text == "" {
            let alertDialog = UIAlertController(title: "WARNING!", message: "Eggs Can't Be Empty", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
            
        } else if egg == 10 {
            let a : Double = (2500 * egg!)
            let total : Double = ((25/100) * a)
            let totalpay : Double = (a - total)
            lblBefore.text = "Before Discount \(a)"
            lblDiscount.text = "Discount = \(totalpay)"
            lblAfter.text = "After Discount = \(total)"
        } else if egg == 25 {
            let a : Double = (2500 * egg!)
            let total : Double = ((50/100) * a)
            let totalpay : Double = (a - total)
            lblBefore.text = "Before Discount \(a)"
            lblDiscount.text = "Discount = \(totalpay)"
            lblAfter.text = "After Discount = \(total)"
        } else if egg == 5 {
            let a : Double = (2500 * egg!)
            let total : Double = ((10/100) * a)
            let totalpay : Double = (a - total)
            lblBefore.text = "Before Discount \(a)"
            lblDiscount.text = "Discount = \(totalpay)"
            lblAfter.text = "After Discount = \(total)"
        }else if egg == 0 {
            let alertDialog = UIAlertController(title: "Hello", message: "Eggs Can't Be 0(ZERO)", preferredStyle: .alert)
            alertDialog.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertDialog, animated: true, completion: nil)
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
