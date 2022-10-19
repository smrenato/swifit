//
//  MusicDetailViewController.swift
//  MusicAppStoryBoard
//
//  Created by student on 19/10/22.
//

import UIKit

class MusicDetailViewController: UIViewController {
    
    var music: MusicModel?

    @IBOutlet weak var artistImage: UIImageView!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var musicNameLabel: UILabel!
    
    @IBOutlet weak var albumLabel: UILabel!
    
    @IBOutlet weak var artistTitle: UINavigationItem!
    
    @IBOutlet weak var aboutArtistLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        artistTitle.title = music!.musicTitle
        artistNameLabel.text = music!.musicSubtitle
        musicNameLabel.text = music!.musicTitle
        artistImage.image = UIImage(named: music!.artistImage)
        
        // Do any additional setup after loading the view.
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
