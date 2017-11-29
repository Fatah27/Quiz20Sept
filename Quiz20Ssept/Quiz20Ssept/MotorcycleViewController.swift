//
//  MotorcycleViewController.swift
//  Quiz20Ssept
//
//  Created by abdul fatah on 9/20/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class MotorcycleViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var Hours: UITextField!
    @IBOutlet weak var lblNama: UILabel!
    @IBOutlet weak var lblSewa: UILabel!
    @IBOutlet weak var lblSatuLagi: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnRent(_ sender: Any) {
        let hour : Double? = Double(Hours.text!)
        let ours : Double = hour! * 35000
        var hours = (hour!)
        if hours == 10 {
            let diskon = ours * (25/100)
            let total = ours * (75/100)
            lblNama.text = "Before Discount =\(ours)"
            lblSewa.text = "Discount =\(diskon)"
            lblSatuLagi.text = "After Discount =\(total)"
        }else if hours == 5 {
            let diskon = ours * (10/100)
            let total = ours * (90/100)
            lblNama.text = "Before Discount =\(ours)"
            lblSewa.text = "Discount =\(diskon)"
            lblSatuLagi.text = "After Discount =\(total)"
        }else if hours == 3 {
            let diskon = ours * (5/100)
            let total = ours * (95/100)
            lblNama.text = "Before Discount =\(ours)"
            lblSewa.text = "Discount =\(diskon)"
            lblSatuLagi.text = "After Discount =\(total)"
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
