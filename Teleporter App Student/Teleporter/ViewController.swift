//
//  ViewController.swift
//
//  This is the main place we're telling iOS what our app should do, and how it should react to
//  what the user does.
//
//  All of your custom logic should live in here.
//

import UIKit

class ViewController: UIViewController {
    
    // These variables are UILabels: the name for a block of visible text in an iOS app.
    // We've done the setup for you so that you can update them directly in your code.
    //
    // To change the text on a label, just set the "text" property to the string you want.
    //
    // For example,
    // myLabel.text = "Hi there"
    // will display "Hi there" on the UILabel that I've named "myLabel."
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var fuelLeftLabel: UILabel! 
    @IBOutlet weak var destinationLabel: UILabel!
    
    // These are functions that are triggered when certain buttons are pressed by the user.
    // We've done the setup for you so that you can write the code directly in here, and it will
    // be run when the button is tapped.
    var fuel: Int = 1000
    var currentCity: String = ""
    var cities: [String] = ["Paris", "NYC", "SF", "London", "Tokyo"]
    
    var cityDecriptions: [String] = ["Paris is the capital and most populous city of France. Situated on the river Seine in the north of the country, it is in the centre of the Île-de-France region, also known as the région parisienne", "New York, the largest city in the U.S., is an architectural marvel with plenty of historic monuments, magnificent buildings and countless dazzling skyscrapers.", "San Francisco officially the City and County of San Francisco, is the cultural, commercial, and financial center of Northern California", "London is the capital city of England and the United Kingdom", "Tokyo is the capital of Japan and is located in the Kanto region of Central Honsu"]
    
    var fuelCosts: [Int] = [60, 80, 70, 60, 40]
    
    func goTo(cityNumber: Int) {
        if currentCity != cities[cityNumber]{
            if fuel > fuelCosts[cityNumber]{
                destinationLabel.text = cityDecriptions[cityNumber]
                fuel -= fuelCosts[cityNumber]
                fuelLeftLabel.text = "You have \(fuel) units of fuel left"
                currentCity = cities[cityNumber]
            }
            else {
                fuelLeftLabel.text = "You do not have enough fuel."
                destinationLabel.text = "You cannot teleport to this city!"
            }
        }
        else{
            destinationLabel.text = "You cannot teleport to the same city!"
        }
    }


    @IBAction func goToParis() {
        goTo(0)
    }

    @IBAction func goToNYC() {
        goTo(1)
    }
    
    @IBAction func goToSF() {
        goTo(2)
    }
    
    @IBAction func goToLondon() {
        goTo(3)
    }
    
    @IBAction func goToTokyo() {
        goTo(4)
    }
    
}