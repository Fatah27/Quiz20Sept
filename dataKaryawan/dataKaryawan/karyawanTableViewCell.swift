//
//  karyawanTableViewCell.swift
//  dataKaryawan
//
//  Created by abdul fatah on 11/16/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class karyawanTableViewCell: UITableViewCell {
    @IBOutlet weak var lblNama: UILabel!
    @IBOutlet weak var lblPosisi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
