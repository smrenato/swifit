//
//  Musics.swift
//  MusicAppStoryBoard
//
//  Created by student on 17/10/22.
//

import Foundation


class MusicModel {
    let musicTitle : String
    let musicSubtitle : String
    let artistImage : String
    
    init( title: String, subtitle: String, imagePath: String ){
        self.musicTitle = title
        self.musicSubtitle = subtitle
        self.artistImage = imagePath
        
    }
    
}


class MusicDAO{
    static func getList()-> [MusicModel] {
        return[
            
            MusicModel(title: "Royal Blood", subtitle: "Litle Monster", imagePath: "royal_blood"),
            MusicModel(title: " Blood", subtitle: "Litle Monster", imagePath: "royal_blood")
        ]
    }
}
