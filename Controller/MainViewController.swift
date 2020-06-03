//
//  ViewController.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import UIKit
import SDWebImage

class MainViewController: UIViewController {
    var photos = [Photo]()
    var newtorkhanler = Networking()
    @IBOutlet weak var tableview : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
        navigationItem.title = "Photos List"
        response()
    }
    
    func response () {
        newtorkhanler.response(url: UrlPathSingleTon.urlsingleton.shared()) { (photos : [Photo]) in
            self.photos = photos
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        }
    }

}

extension MainViewController : UITableViewDataSource  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoDetailCell" , for: indexPath) as! PhotoDetailCell
        cell.backgroundColor = (indexPath.row % 2 == 0 ) ? .systemRed  : .systemBlue
        cell.title.beautify(indexpath: indexPath.row)
        cell.urllabel.beautify(indexpath: indexPath.row)
        cell.populate(tit: photos[indexPath.row].title, url: photos[indexPath.row].url)
        return cell
    }
}

extension MainViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let storyB = UIStoryboard.init(name: "Main", bundle: nil)
        guard let imageVc = storyB.instantiateViewController(identifier: "ImageViewController") as? ImageViewController else {return}
        imageVc.textring = "UrlPath:  " + photos[indexPath.row].url
        let url = URL(string: photos[indexPath.row].url)
        imageVc.urlpath = url
        navigationController?.pushViewController(imageVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height : CGFloat = CGFloat()
        height = 200
        return height
    }
}

