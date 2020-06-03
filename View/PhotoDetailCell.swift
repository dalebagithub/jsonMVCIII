//
//  PhotoDetailCell.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit

class PhotoDetailCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var urllabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        populate(tit: "", url: "")
    }
    func populate (tit : String  , url: String ) {
        title.text = tit
        urllabel.text = url
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
