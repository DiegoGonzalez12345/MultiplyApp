//
//  ViewController.swift
//  MultiplyApp
//
//  Created by Diego Gonzalez on 9/27/21.
//

import UIKit

class ViewController: UIViewController
{
    //Variable Declaration
    @IBOutlet weak var textBox1: UITextField!
    @IBOutlet weak var textBox2: UITextField!
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
  
    
    
    
        
        
        
    
    

    @IBAction func myButton(_ sender: Any)
    {
        var Number1=textBox1.text ?? "0"
        var Number2=textBox2.text ?? "0"
        var integerNumber1 = Int(Number1) ?? 0
        
        
    }
    
}

