//
//  DetailDataViewController.swift
//  dataKaryawan
//
//  Created by abdul fatah on 11/17/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class DetailDataViewController: UIViewController {
    @IBOutlet weak var namaKaryawan: UILabel!
    @IBOutlet weak var lblPosisi: UILabel!
    @IBOutlet weak var lblGaji: UILabel!
    @IBOutlet weak var lblAlamat: UILabel!
    @IBOutlet weak var lblTanggalMasuk: UILabel!
    
    var ididid:String?
    var passNama:String?
    var posisi:String?
    var gaji:String?
    var alamat:String?
    var tanggalMasuk:String?
    
    override func viewDidLoad() {
        //lblidKaryawan.text = passId!
        namaKaryawan.text = passNama!
        lblPosisi.text = posisi!
        lblGaji.text = gaji!
        lblAlamat.text = alamat!
        lblTanggalMasuk.text = tanggalMasuk!
        //blbid.text = ididid!
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
