//
//  ViewController.swift
//  MenterBook
//
//  Created by 小林玲衣奈 on 2020/09/03.
//  Copyright © 2020 小林玲衣奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    

    
override func viewDidLoad() {
       super.viewDidLoad()
       // Do any additional setup after loading the view.
       
       mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
       mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
       mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "WebS, WebD"))
    
    setUI()
    
    }
    
    @IBAction func mae(){
        if index == 0{
            index = 2
            setUI()
        } else {
            index = index - 1
            setUI()
        }
    }


    @IBAction func tugi(){
        if index == 2{
            index = 0
            setUI()
        } else {
            index = index + 1
             setUI()
        }
    }

}

