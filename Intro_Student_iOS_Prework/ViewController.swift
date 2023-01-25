//
//  ViewController.swift
//  Intro_Student_iOS_Prework
//
//  Created by Raunaq Malhotra on 1/23/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        var introduction = "Hey Everyone. My name is \(firstNameTextField.text!) \(lastNameTextField.text!). I'm a \(year!) year student at \(schoolNameTextField.text!)."
        
        if numberOfPetsLabel.text! == "0"{
            introduction += " I don’t own any pets."
        } else {
            introduction += " I own \(numberOfPetsLabel.text!) pets."
        }
        
        introduction += " It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeBackgroundPink(_ sender: UIButton) {
        
        let pastelPink = UIColor(hue: 0.9, saturation: 0.3, brightness: 0.9, alpha: 1.0)
        self.view.backgroundColor = pastelPink

    }
    
    @IBAction func changeBackgroundYellow(_ sender: UIButton) {
        
        let pastelBlue = UIColor(hue: 0.12, saturation: 0.9, brightness: 0.9, alpha: 1.0)
        self.view.backgroundColor = pastelBlue
        
    }
    
    @IBAction func changeBackgroundDefault(_ sender: UIButton) {
        
        self.view.backgroundColor = UIColor.white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

