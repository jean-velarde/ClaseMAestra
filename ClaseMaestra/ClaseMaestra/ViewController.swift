//
//  ViewController.swift
//  ClaseMaestra
//
//  Created by jean carlo velarde on 25/01/23.
//

import UIKit

class ViewController: UIViewController {

    var seekRed: Double = Double.random(in: 0..<1)
    var seekGreen: Double = Double.random(in: 0..<1)
    var seekBlue: Double = Double.random(in: 0..<1)
    var red: Double = 0.5
    var green: Double = 0.5
    var blue: Double = 0.5
    
    @IBOutlet weak var txtInformation: UILabel!
    @IBOutlet weak var ViewStatic: UIView!
    @IBOutlet weak var viewUSer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ViewStatic.backgroundColor = UIColor(red: self.seekRed, green: self.seekGreen, blue: self.seekBlue, alpha: 1)
        self.txtInformation.text = "R: \(Int(self.red * 255)) - G: \(Int(self.green * 255)) - B: \(Int(self.blue * 255))"
        
    }

    @IBAction func redChange(_ sender: UISlider) {
        self.red = Double(sender.value)
        self.viewUSer.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1)
        self.txtInformation.text = "R: \(Int(self.red * 255)) - G: \(Int(self.green * 255)) - B: \(Int(self.blue * 255))"
    }
    
    @IBAction func greenChange(_ sender: UISlider) {
        self.green = Double(sender.value)
        self.viewUSer.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1)
        self.txtInformation.text = "R: \(Int(self.red * 255)) - G: \(Int(self.green * 255)) - B: \(Int(self.blue * 255))"
    }
    
    @IBAction func blueChange(_ sender: UISlider) {
        self.blue = Double(sender.value)
        self.viewUSer.backgroundColor = UIColor(red: self.red, green: self.green, blue: self.blue, alpha: 1)
        self.txtInformation.text = "R: \(Int(self.red * 255)) - G: \(Int(self.green * 255)) - B: \(Int(self.blue * 255))"
    }
    
    @IBAction func calcularResultado(_ sender: UIButton) {
        let correcRed = Int(self.seekRed * 255)
        let correcGreen = Int(self.seekGreen * 255)
        let correcBlue = Int(self.seekBlue * 255)
        print("correcRed \(correcRed) - \(Int(self.red * 255))")
        print("R: \(Int(self.red * 255) - correcRed) - G: \(Int(self.green * 255) - correcGreen) - B: \(Int(self.blue * 255) - correcBlue)")
        
        let resultado = "R: \(Int(self.red * 255) - correcRed) - G: \(Int(self.green * 255) - correcGreen) - B: \(Int(self.blue * 255) - correcBlue)"
        
        
        let alert = UIAlertController(title: "Resultado", message: resultado, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
}

