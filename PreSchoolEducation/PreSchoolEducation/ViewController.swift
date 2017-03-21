//
//  ViewController.swift
//  PreSchoolEducation
//
//  Created by Nilane Pathmanathan on 17/03/2017.
//  Copyright © 2017 Nilane Pathmanathan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Answer0: UIButton!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var Answer3: UIButton!
    @IBOutlet weak var Answer4: UIButton!
    @IBOutlet weak var Answer5: UIButton!
    @IBOutlet weak var Answer6: UIButton!
    @IBOutlet weak var Answer7: UIButton!
    @IBOutlet weak var Answer8: UIButton!
    @IBOutlet weak var Answer9: UIButton!
    
    @IBOutlet weak var Apple1: DraggedImageView!
    @IBOutlet weak var Apple2: DraggedImageView!
    @IBOutlet weak var Apple3: DraggedImageView!
    @IBOutlet weak var Apple4: DraggedImageView!
    @IBOutlet weak var Apple5: DraggedImageView!
    @IBOutlet weak var Apple6: DraggedImageView!
    @IBOutlet weak var Apple7: DraggedImageView!
    @IBOutlet weak var Apple8: DraggedImageView!
    @IBOutlet weak var Apple9: DraggedImageView!

    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var Basket: UIImageView!
    @IBOutlet weak var CorrectBackground: UIImageView!
    @IBOutlet weak var Correct: UILabel!
    @IBOutlet weak var PlayAgain: UIButton!
    
    @IBOutlet weak var StarAnimation1: UIImageView!
    @IBOutlet weak var StarAnimation2: UIImageView!
    
    
    var FirstNumber : Int = 0
    var SecondNumber : Int = 0
    var Answer : Int = 0
    
    var CorrectAudioURL = NSURL(fileURLWithPath:Bundle.main.path(forResource: "CorrectAudio", ofType: "mp3")!)
    var CorrectAudioPlayer = AVAudioPlayer()
    
    var WrongAudioURL = NSURL(fileURLWithPath:Bundle.main.path(forResource: "WrongAudio", ofType: "mp3")!)
    var WrongAudioPlayer = AVAudioPlayer()
    


    override func viewDidLoad() {
        super.viewDidLoad()
        RandomizeNumbers()
        
        do {
            try CorrectAudioPlayer = AVAudioPlayer(contentsOf: CorrectAudioURL as URL)
        }catch
        {
            print("error")
        }
        
        do {
            try WrongAudioPlayer = AVAudioPlayer(contentsOf: WrongAudioURL as URL)
        }catch
        {
            print("error")
        }
        
        let imagesNames = ["star_kids1.png", "star_kids2.png"]
        var images = [UIImage] ()
        for i in 0..<imagesNames.count{
            images.append(UIImage(named: imagesNames[i])!)
        }
        StarAnimation1.animationImages = images
        StarAnimation1.animationDuration = 1.0
        StarAnimation1.startAnimating()
        StarAnimation2.animationImages = images
        StarAnimation2.animationDuration = 1.0
        StarAnimation2.startAnimating()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Answer0(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 0 {
            correct()
        }
        else if Answer != 0 {
            incorrect()
        }
    }
    @IBAction func Answer1(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 1 {
            correct()
        }
        else if Answer != 1 {
            incorrect()
        }
    }
    @IBAction func Answer2(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 2 {
            correct()
        }
        else if Answer != 2 {
            incorrect()
        }
    }
    @IBAction func Answer3(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 3 {
            correct()
        }
        else if Answer != 3 {
            incorrect()
        }
    }
    @IBAction func Answer4(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 4 {
            correct()
        }
        else if Answer != 4 {
            incorrect()
        }
    }
    @IBAction func Answer5(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 5 {
            correct()
        }
        else if Answer != 5 {
            incorrect()
        }
    }
    @IBAction func Answer6(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 6 {
            correct()
        }
        else if Answer != 6 {
            incorrect()
        }
    }
    @IBAction func Answer7(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 7 {
            correct()
        }
        else if Answer != 7 {
            incorrect()
        }
    }
    @IBAction func Answer8(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 8 {
            correct()
        }
        else if Answer != 8 {
            incorrect()
        }
    }
    
    @IBAction func Answer9(_ sender: UIButton) {
        if FirstNumber + SecondNumber == 9 {
            correct()
        }
        else if Answer != 9 {
            incorrect()
        }
    }
   
    @IBAction func PlayAgain(_ sender: UIButton) {
        Answer0.isHidden = false
        Answer1.isHidden = false
        Answer2.isHidden = false
        Answer3.isHidden = false
        Answer4.isHidden = false
        Answer5.isHidden = false
        Answer6.isHidden = false
        Answer7.isHidden = false
        Answer8.isHidden = false
        Answer9.isHidden = false
        
        RandomizeNumbers()
        
        Question.isHidden = false
        Background.isHidden = false
        Basket.isHidden = false
        CorrectBackground.isHidden = true
        PlayAgain.isHidden = true
        
        Apple1.isHidden = false
        Apple2.isHidden = false
        Apple3.isHidden = false
        Apple4.isHidden = false
        Apple5.isHidden = false
        Apple6.isHidden = false
        Apple7.isHidden = false
        Apple8.isHidden = false
        Apple9.isHidden = false
        
        StarAnimation1.isHidden = true
        StarAnimation2.isHidden = true
        }
    
    func RandomizeNumbers(){
        
        FirstNumber = Int(arc4random_uniform(5))
        SecondNumber = Int(arc4random_uniform(5))
        Answer = FirstNumber + SecondNumber
        PrintQuestions()
    }
    
    func PrintQuestions(){
        
        Question.text = "\(FirstNumber) + \(SecondNumber) = "
    }
    
    func correct() {
        Answer0.isHidden = true
        Answer1.isHidden = true
        Answer2.isHidden = true
        Answer3.isHidden = true
        Answer4.isHidden = true
        Answer5.isHidden = true
        Answer6.isHidden = true
        Answer7.isHidden = true
        Answer8.isHidden = true
        Answer9.isHidden = true
        
        Question.isHidden = true
        Background.isHidden = true
        Basket.isHidden = true
        CorrectBackground.isHidden = false
        Correct.text = Question.text! + "\(Answer)"
        PlayAgain.isHidden = false
        CorrectAudioPlayer.play ()
        
        Apple1.isHidden = true
        Apple2.isHidden = true
        Apple3.isHidden = true
        Apple4.isHidden = true
        Apple5.isHidden = true
        Apple6.isHidden = true
        Apple7.isHidden = true
        Apple8.isHidden = true
        Apple9.isHidden = true
        
        StarAnimation1.isHidden = false
        StarAnimation2.isHidden = false

    }
    
    func incorrect() {
        WrongAudioPlayer.play ()
        
    }
}
