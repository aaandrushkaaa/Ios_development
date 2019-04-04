//
//  ViewController.swift
//  anime
//
//  Created by Alex SAV on 03.04.2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    

    let cellIdentifier = "customTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    var modelArray = [cellModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillModelArray()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib.init(nibName: "customTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func fillModelArray() {
        for i in 1...titles.count {
            let model = cellModel()
            model.title = titles[i-1].name
            model.number = "\(titles[i-1].episodes)"
            model.img = titles[i-1].file
            
            modelArray.append(model)
        }
    }
    
    
    func fillModelArraySupport(i:Int) -> supportTableViewModel{
        
        let modelsup = supportTableViewModel()
        modelsup.name = titles[i].name
        modelsup.type = titles[i].type
        modelsup.episodes = String(titles[i].episodes)
        modelsup.episodeLength = titles[i].episodeLength
        modelsup.descr = titles[i].descr
        modelsup.img = titles[i].file
        return modelsup
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let castedCell = cell as? customTableViewCell {
            castedCell.fillCell(with: model)
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
       
        
        let destination = SupportViewController()
        destination.modelsupport = fillModelArraySupport(i:indexPath.row)
        navigationController?.pushViewController(destination, animated: true)
    }
    
    

}


