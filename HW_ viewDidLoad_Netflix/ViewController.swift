//
//  ViewController.swift
//  HW_ viewDidLoad_Netflix
//
//  Created by 曹家瑋 on 2023/4/21.
//


import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    var looperSound: AVPlayerLooper?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 透過 AVPlayerLooper 重復播放音樂
        if let soundUrl = URL(string: "https://www.googleapis.com/drive/v3/files/1tlDgIB5v5wU72B5Mszsl57nFsUSZKIhH?alt=media&key=AIzaSyBM1JnQE_STOW0dNrz0G4YtQ1NyS6CbhBA") {
            
            let soundPlayer = AVQueuePlayer()
            let soundItem = AVPlayerItem(url: soundUrl)
            looperSound = AVPlayerLooper(player: soundPlayer, templateItem: soundItem)
            soundPlayer.play()
        }
       
        // 透過 animatedImageNamed 加入 gif
        let netflixImageView = UIImageView(frame: CGRect(x: 71, y: 276, width: 250, height: 300))
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        view.addSubview(netflixImageView)
        
        let netflixAnimatedImage = UIImage.animatedImageNamed("giphy-", duration: 3.6)
        netflixImageView.image = netflixAnimatedImage
        
        
    }


}
