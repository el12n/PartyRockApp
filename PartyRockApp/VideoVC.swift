//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Alvaro De La Cruz on 10/31/16.
//  Copyright © 2016 Alvaro De La Cruz. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock{
        get{
            return _partyRock
        }
        set{
            _partyRock = newValue 
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize(){
        self.title = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoUrl, baseURL: nil)
    }
    
}
