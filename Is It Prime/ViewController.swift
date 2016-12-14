//
//  ViewController.swift
//  Is It Prime
//
//  Created by Guilherme Henrique Crozariol on 2016-12-13.
//  Copyright © 2016 Lion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInt = Int(userEnteredString)
            
            if let number = userEnteredInt {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                if number == 2 || number == 3 {
                    
                    isPrime = true
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    resultLabel.text = "The number \(number) is prime."
                    
                } else {
                    
                    resultLabel.text = "The number \(number) is not prime."
                    
                }
                
            } else {
                
                resultLabel.text = "Enter a positive whole number."
                
            }
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

