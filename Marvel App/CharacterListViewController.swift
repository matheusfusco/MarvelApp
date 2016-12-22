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

class CharacterListViewController: UIViewController {
    
    @IBOutlet weak var characterTableView: UITableView!
    
    fileprivate lazy var model : CharacterListModel = {
        return CharacterListModel(delegate : self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
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
