//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Anika Morris on 11/19/19.
//  Copyright © 2019 Anika Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let companies = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]

    let customers = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]


    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var customerLabel: UILabel!
    @IBOutlet weak var forLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        customerLabel.text = ""
        forLabel.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
    func generateAnswer() {
        let randomCompany = Int.random(in: 0..<companies.count)
        let randomCustomer = Int.random(in: 0..<customers.count)
        
        answerLabel.text = companies[randomCompany]
        forLabel.text = "for"
        customerLabel.text = customers[randomCustomer]
    }
}

