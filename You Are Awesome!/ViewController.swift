//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Christian Guma on 5/30/19.
//  Copyright © 2019 Christian Guma. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var awesomeimage: UIImageView!
    @IBOutlet weak var MessageLabel: UILabel!
    @IBOutlet weak var soundswitch: UISwitch!
    var awesomeplayer = AVAudioPlayer()
    var index = 0
    var imageindex = -1
    var soundindex = -1
    let numberofImages = 10
    let numberofsounds = 5
    
    // code below executs when app view first loads
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func nonrepeatingrandom(lastnumber: Int, maxvalue: Int) -> Int {
        var newindex: Int
        repeat {
            newindex = Int.random(in: 0..<maxvalue)
        }  while lastnumber == newindex
        return newindex
    }
    
    func playsound(soundname:String, audioplayer: inout AVAudioPlayer){
        // play sound
        var soundname = "sound\(soundindex)"
        
        // can we load from somwhere?
        if let sound = NSDataAsset(name:soundname) {
            //check
            do {
                try audioplayer = AVAudioPlayer(data: sound.data)
                audioplayer.play()
            } catch {
                // if not valid
            }
        } else {
            // no work
            print("ERROR: File \(soundname) didn't load")
        }
    }
    
    @IBAction func soundswitchpressed(_ sender: UISwitch) {
        if soundswitch.isOn == false && soundindex != -1 {
            awesomeplayer.stop()
        }
    }
    @IBAction func showMPressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the genius bar needs help they call you",
                        "You brigthen my day",
                        "You are Da Bomb",
                        "Hey, Fabulous!",
                        "You Are Tremendous!",
                        "You've got the design skills of Jony Ive",
                        "I can't wait to download your app"]
        
        index = nonrepeatingrandom(lastnumber: index, maxvalue: messages.count)
        MessageLabel.text = messages[index]
        
    
      // show image
        imageindex = nonrepeatingrandom(lastnumber: imageindex, maxvalue: numberofImages)
        awesomeimage.image = UIImage(named: "image\(imageindex)")
        
        // if soundswitch.isOn == true {
            if soundswitch.isOn {
                
                // random sound number
                soundindex = nonrepeatingrandom(lastnumber: soundindex, maxvalue: numberofsounds)
                
                // play sound
                let soundname = "sound\(soundindex)"
                
        playsound(soundname: soundname, audioplayer: &awesomeplayer)
        }
    }
}

     //   MessageLabel.text = messages.randomElement()!
        
//        MessageLabel.text = messages[index]
//
//        if index == messages.count - 1{
//            index = 0
//        }else{
//            index = index + 1

        
        
        
//        let message1 = "You Are Fantastic!!!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//        if MessageLabel.text == message1 {
//            MessageLabel.text = message2        } else if MessageLabel.text == message2 {
//            MessageLabel.text = message3
//        } else {
//            MessageLabel.text = message1
