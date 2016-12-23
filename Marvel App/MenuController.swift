//
//  MenuController.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 22/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation
import UIKit

class MenuController: UITableViewController {
    
    var menuArray : Array<Any>?
    var menuDict = ["image" : "",
                    "title" : ""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgLogo = UIImage (named: "marvel_logo.jpg")
        navigationItem.titleView = UIImageView (image: imgLogo)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//extension MenuController : UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//    }
//}

//extension MenuController : UITableViewDataSource {
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 7
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_characters", for: indexPath)
//        
//        return cell
//    }
//}
