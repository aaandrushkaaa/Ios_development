//
//  SupportViewController.swift
//  anime
//
//  Created by Alex SAV on 03.04.2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import UIKit

class SupportViewController: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var LabelName: UILabel!
    @IBOutlet weak var LabelType: UILabel!
    @IBOutlet weak var LabelTypeName: UILabel!
    @IBOutlet weak var LabelEpisodes: UILabel!
    @IBOutlet weak var LabelEpisodesCount: UILabel!
    @IBOutlet weak var LabelLength: UILabel!
    @IBOutlet weak var LabelLengthCount: UILabel!
    @IBOutlet weak var LabelDescr: UITextView!
    
    var modelsupport:supportTableViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    fillViewfunc(with: modelsupport)
        // Do any additional setup after loading the view.
    }

    func fillViewfunc (with model: supportTableViewModel) {
        LabelName.text = model.name
        LabelTypeName.text = model.type
        myImg.image = UIImage(named: "img/" + model.img! + ".jpg")
        LabelEpisodesCount.text = model.episodes
        LabelLengthCount.text = model.episodeLength
        LabelDescr.text = model.descr
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
