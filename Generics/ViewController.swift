//
//  ViewController.swift
//  Generics
//
//  Created by SubhajitPoddar on 17/10/17.
//  Copyright © 2017 SubhajitPoddar. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    var stringArray = ["Hi", "Hello", "Bye"]
    var intArray = [1, 2, 3, 4, 5]
    var doubleArray = [1.2, 3.1, 2.1]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoURL = URL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")
        let player = AVPlayer(url: videoURL!)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        // print All the element
        
        printStringFromArray(a: stringArray)
        printIntFromArray(a: intArray)
        printDoubleFromArray(a: doubleArray)
        
        printElementFromArray(a: stringArray)
        
      print ("\(doNothing(x: "123"))") //  doNothing(x: "123")
    }
    
    func printStringFromArray(a: [String]) {
        
        for s in a {
            
            print(s)
        }
    }
    
    
    func printIntFromArray(a: [Int]) {
        
        for i in a {
            
            print (i)
        }
    }
    
    func printDoubleFromArray(a: [Double]) {
        
        for d in a {
            
            print (d)
        }
    }
    
    //Generics comes in
    
    //Ex-1
    
    func printElementFromArray<T>(a:[T]){
        
        for element in a {
            
            print(element)
        }
    }
    
    func doNothing<T>(x:T)->T {
        
        return x
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

