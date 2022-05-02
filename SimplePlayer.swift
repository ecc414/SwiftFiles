//
//  SimplePlayer.swift
//  SwiftFiles
//
//  Created by 엄철찬 on 2022/05/03.
//

import Foundation
import AVFoundation

class SimplePlayer {
    
    static var shared = SimplePlayer()
    
    private let player = AVPlayer()

    var isPlaying : Bool {
        return player.isPlaying
    }
    
    var currentItem : AVPlayerItem? {
        return player.currentItem
    }
    
    func play() {
        player.seek(to: CMTime(seconds: 0, preferredTimescale: 100))    //항상 처음부터 재생
        player.play()
    }
    
    func pause() {
        player.pause()
    }
    
    func replaceCurrentItem(with item : AVPlayerItem?){
        player.replaceCurrentItem(with: item)
    }
}


extension AVPlayer {
    
    var isPlaying : Bool{
        
        guard self.currentItem != nil else { return false}
        
        return self.rate != 0
        
    }
    
}
