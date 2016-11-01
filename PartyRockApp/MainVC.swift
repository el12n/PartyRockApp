//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Alvaro De La Cruz on 10/31/16.
//  Copyright © 2016 Alvaro De La Cruz. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeDummy()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func initializeDummy(){
        let p1 = PartyRock(imageUrl: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        let p2 = PartyRock(imageUrl: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        let p3 = PartyRock(imageUrl: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle Lesson")
        let p4 = PartyRock(imageUrl: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Commercial")
        let p5 = PartyRock(imageUrl: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoUrl: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VideoVC" {
            if let videoVC = segue.destination as? VideoVC {
                videoVC.partyRock = (sender as? PartyRock)!
            }
        }
    }
    
//    MARK: - TableView Delegate & Data Source
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            cell.updateUI(partyRock: partyRocks[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }

}

