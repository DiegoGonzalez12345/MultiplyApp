//
//  ViewController.swift
//  MultiplyApp
//
//  Created by Diego Gonzalez on 9/27/21.
//

import UIKit
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}



class ViewController: UIViewController
{
    //Variable Declaration
    @IBOutlet weak var textBox1: UITextField!
    @IBOutlet weak var textBox2: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var imageMario:
        
        
        UIImageView!

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        assignbackground()
        textBox1.resignFirstResponder()
        textBox2.resignFirstResponder()
    }
  
    func assignbackground()
    {
            let background = UIImage(named: "numbersbackground")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
    }
    
    
        
        
        
    
    

    @IBAction func myButton(_ sender: Any)
    {   //calculate
        var Number1=textBox1.text ?? "0"
        var Number2=textBox2.text ?? "0"
        var integerNumber1 = Float(Number1) ?? 0
        var integerNumber2 = Float(Number2) ?? 0
        var product=integerNumber1*integerNumber2
        var product1 = String(product)
        myLabel.text = product1
        if product==64
        {
            imageMario.image = UIImage(named:"mario64")
        
            
        }
        
       
        
    }
   
    
    
    
    
    
}

