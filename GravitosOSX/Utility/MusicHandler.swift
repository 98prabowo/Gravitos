//
//  MusicHandler.swift
//  GravitosOSX
//
//  Created by Dimas A. Prabowo on 16/04/21.
//

import Foundation
import AVFoundation

class MusicHandler {
    static let shareHandler = MusicHandler()
    
    var audioPlayer: AVAudioPlayer?
    var soundEffectPlayer: AVAudioPlayer?
    
    func setupBackgroundMusic(music: String) {
        let url: URL? = Bundle.main.url(forResource: music, withExtension: ".wav")
        guard let urlMusic = url else { return }
        do{
            audioPlayer?.stop()
            
            audioPlayer = try AVAudioPlayer(contentsOf: urlMusic)
            audioPlayer?.prepareToPlay()
            audioPlayer?.volume = 1.0
            audioPlayer?.play()
            audioPlayer?.numberOfLoops = -1
        } catch {
            print(error)
        }
    }
    
    func playSoundEffect(sound: String) {
        let url: URL? = Bundle.main.url(forResource: sound, withExtension: ".wav")
        guard let urlSound = url else { return }
        do {
            soundEffectPlayer = try AVAudioPlayer(contentsOf: urlSound)
            soundEffectPlayer?.prepareToPlay()
            soundEffectPlayer?.volume = 1.0
            soundEffectPlayer?.play()
            soundEffectPlayer?.numberOfLoops = 1
        } catch {
            print(error)
        }
    }
}
