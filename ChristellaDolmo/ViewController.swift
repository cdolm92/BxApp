//
//  ViewController.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/20/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import UIKit
import AVFoundation
import SCLAlertView

class ViewController: UIViewController {
    
    var musicPlayer: AVAudioPlayer!
    
    var facts = BxFacts()

    @IBOutlet weak var playBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playBtn.setImage(UIImage(named: "musicOff.png"), forState: UIControlState.Normal)
    }
    
    override func viewDidAppear(animated: Bool) {
        initAudio()
    }
    
    func initAudio() {
        let path = NSBundle.mainBundle().pathForResource("TheMessage", ofType: "mp3")!
        
        do {
            musicPlayer = try AVAudioPlayer(contentsOfURL: NSURL(string: path)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    @IBAction func menuBtnTapped(sender: AnyObject) {
        musicPlayer.stop()
        performSegueWithIdentifier("MenuVC", sender: sender)
    }
    
    @IBAction func musicBtnPressed(sender: UIButton!) {
        if musicPlayer.playing {
            musicPlayer.stop()
            sender.alpha = 0.8
            playBtn.setImage(UIImage(named: "musicOn.png"), forState: UIControlState.Normal)
        } else {
            musicPlayer.play()
            sender.alpha = 1.0
            playBtn.setImage(UIImage(named: "musicOff.png"), forState: UIControlState.Normal)
            }
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            SCLAlertView().showInfo("Did You Know?", subTitle: facts.randomFact(),duration: 10.0, colorStyle: 555555)
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

