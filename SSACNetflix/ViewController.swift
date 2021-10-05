//
//  ViewController.swift
//  SSACNetflix
//
//  Created by Sang hun Lee on 2021/09/28.
//

import UIKit

class ViewController: UIViewController {
    var posters: [UIImage] = [
        UIImage(named: "poster1")!,
        UIImage(named: "poster2")!,
        UIImage(named: "poster3")!,
        UIImage(named: "poster4")!,
        UIImage(named: "poster5")!,
        UIImage(named: "poster6")!,
        UIImage(named: "poster7")!,
        UIImage(named: "poster8")!,
        UIImage(named: "poster9")!,
        UIImage(named: "poster10")!,
    ]

    @IBOutlet var mainPoster: UIImageView!
    @IBOutlet var firstSubPoster: UIImageView!
    @IBOutlet var secondSubPoster: UIImageView!
    @IBOutlet var thirdSubPoster: UIImageView!
    
    func getRandomNum() -> [Int] {
        var numberSet = Set<Int>()
        while numberSet.count < 4 {
            numberSet.insert(Int.random(in: 0...posters.count - 1))
        }
        return Array(numberSet)
    }
    
    @IBAction func handleClickEvent(_ sender: Any) {
        changeRandomPoster()
    }
    
    func changeRandomPoster() {
        let numbers = getRandomNum()
        mainPoster.image = posters[numbers[0]]
        firstSubPoster.image = posters[numbers[1]]
        secondSubPoster.image = posters[numbers[2]]
        thirdSubPoster.image = posters[numbers[3]]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeRandomPoster()
        firstSubPoster.layer.cornerRadius = firstSubPoster.frame.height/2
        firstSubPoster.layer.borderWidth = 2
        firstSubPoster.clipsToBounds = true
//        firstSubPoster.layer.borderColor = UIColor.clear.cgColor
        firstSubPoster.layer.masksToBounds = true
        firstSubPoster.layer.borderColor = UIColor.gray.cgColor
        
        secondSubPoster.layer.cornerRadius = firstSubPoster.frame.height/2
        secondSubPoster.layer.borderWidth = 2
        secondSubPoster.clipsToBounds = true
//        secondSubPoster.layer.borderColor = UIColor.clear.cgColor
        secondSubPoster.layer.masksToBounds = true
        secondSubPoster.layer.borderColor = UIColor.gray.cgColor
        
        thirdSubPoster.layer.cornerRadius = firstSubPoster.frame.height/2
        thirdSubPoster.layer.borderWidth = 2
        thirdSubPoster.clipsToBounds = true
//        thirdSubPoster.layer.borderColor = UIColor.clear.cgColor
        thirdSubPoster.layer.masksToBounds = true
        thirdSubPoster.layer.borderColor = UIColor.gray.cgColor
    }
    
}

