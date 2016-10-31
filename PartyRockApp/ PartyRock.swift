//
//   PartyRock.swift
//  PartyRockApp
//
//  Created by Alvaro De La Cruz on 10/31/16.
//  Copyright © 2016 Alvaro De La Cruz. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageUrl: String{
        return _imageURL
    }
    
    var videoUrl: String{
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageUrl: String, videoUrl: String, videoTitle: String) {
        _imageURL = imageUrl
        _videoURL = videoUrl
        _videoTitle = videoTitle
    }
}
