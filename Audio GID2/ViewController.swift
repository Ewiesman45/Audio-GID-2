//
//  ViewController.swift
//  Audio GID2
//
//  Created by Evan Wiesman on 1/13/17.
//  Copyright © 2017 Evan Wiesman. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{

    var song : AVAudioPlayer?

    
    @IBAction func replaySong(_ sender: Any)
    {
        print ("Replay")
        replaySound()
    }
    @IBAction func pauseSong(_ sender: Any)
    {
        print ("Pause")
        pauseSound()
    }
    @IBAction func playSong(_ sender: Any)
    {
       print ("Play")
       playSound()
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
       

        
    }

  func playSound()
  {
    
    let url = Bundle.main.url(forResource: "sidetoside", withExtension: "mp3")!
    do
    {
       song = try AVAudioPlayer(contentsOf: url)
        guard let song = song else { return }
        
        song.prepareToPlay()
        song.play()
    }
    
    catch let error
    {
        print(error.localizedDescription)
    }
    
}
    
    func pauseSound()
    {
        
        let url = Bundle.main.url(forResource: "sidetoside", withExtension: "mp3")!
        do
        {
            song = try AVAudioPlayer(contentsOf: url)
            guard let song = song else { return }
            
            song.prepareToPlay()
            song.pause()
        }
            
        catch let error
        {
            print(error.localizedDescription)
        }
        
    }
    
    func replaySound()
    {
        
        let url = Bundle.main.url(forResource: "sidetoside", withExtension: "mp3")!
        do
        {
            song = try AVAudioPlayer(contentsOf: url)
            guard let song = song else { return }
            
            song.prepareToPlay()
            song.currentTime = 0
            song.play()
        }
            
        catch let error
        {
            print(error.localizedDescription)
        }
        
    }



}
