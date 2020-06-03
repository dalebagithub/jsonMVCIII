//
//  ImageViewController.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit
import SDWebImage
class ImageViewController: UIViewController {
    @IBOutlet weak var urllabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    var textring : String = ""
    var urlpath : URL?
    override func viewDidLoad() {
        super.viewDidLoad()
        urllabel.beautifyII()
        populate()
        imageview.beautifty()
    }
    func populate() {
        urllabel.text = textring
        imageview.sd_setImage(with: urlpath, placeholderImage: UIImage(named: "conf"))
    }

}
