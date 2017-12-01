//
//  inputViewController.swift
//  dataKaryawan
//
//  Created by FatahKhair on 11/28/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class inputViewController: UIViewController {
    @IBOutlet weak var inputNama: UITextField!
    @IBOutlet weak var inputPosisi: UITextField!
    @IBOutlet weak var inputGaji: UITextField!
    @IBOutlet weak var inputAlamat: UITextField!
    @IBOutlet weak var inputTglmasuk: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnAdd(_ sender: Any) {
        let nNama = inputNama.text!
        let nPosisi = inputPosisi.text!
        let nGaji = inputGaji.text!
        let nAlamat = inputAlamat.text!
        let nTglMasuk = inputTglmasuk.text!
        if ((nNama.isEmpty) || (nPosisi.isEmpty) || (nGaji.isEmpty) || (nAlamat.isEmpty) || (nTglMasuk.isEmpty)) {
            let alertWarning = UIAlertController(title: "Warning", message: "This is required", preferredStyle: .alert)
            let aksi = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertWarning.addAction(aksi)
            present(alertWarning, animated: true, completion: nil)
        }else{
            let params = ["nama_employee" : nNama, "posisi" : nPosisi, "gaji" : nGaji, "alamat" : nGaji, "tanggal_masuk" : nTglMasuk]
            print (params)
            
            let url = "http://localhost/Karyawan/index.php/Api/daftar"
            
            Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON(completionHandler: { (responseServer) in
                
                print(responseServer.result.isSuccess)
                
                if responseServer.result.isSuccess{
                    let json = JSON(responseServer.result.value as Any)
                    let alertWarning = UIAlertController(title: "Congrats", message: "Data berhasil disimpan", preferredStyle: .alert)
                    let aksi = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertWarning.addAction(aksi)
                    self.present(alertWarning, animated: true, completion: nil)
                    
                }
                
            })
        }
    }
}



