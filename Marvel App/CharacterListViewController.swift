//
//  CharacterListViewController.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 19/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage
import SWRevealViewController

class CharacterListViewController: UIViewController {
    
    @IBOutlet weak var characterTableView: UITableView!
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    fileprivate lazy var model : CharacterListModel = {
        return CharacterListModel(delegate : self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        if self.revealViewController() != nil {
           menuButton.target = self.revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        let image = UIImage(named : "marvel_logo.jpg")
        let imageView = UIImageView (frame: CGRect (x: 0, y: 0, width: 100, height: 44))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        self.navigationItem.titleView = imageView
        //self.navigationController?.navigationItem.titleView = UIImageView (image: image)
        
        print("timeStamp: \(Config.timeStamp) hash: \(Config.hashAPI)")
        model.characterListRequest()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}

extension CharacterListViewController : UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension CharacterListViewController : UITableViewDataSource
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "characterCell", for: indexPath) as! CharacterCell
        
        cell.loadCharacter(model.characters[indexPath.row])
        
        return cell
    }
}

extension CharacterListViewController : CharacterListDelegate {
    func characterListResponse(_ characterListModel: CharacterListModel) {
        if characterListModel.error == nil {
            characterTableView.reloadData()
        }
    }
}
