//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Alvaro De La Cruz on 10/31/16.
//  Copyright © 2016 Alvaro De La Cruz. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        let url = URL(string: partyRock.imageUrl)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            }catch{
                print("Something went wrong downloading the image")
            }
        }
    }
    
}
