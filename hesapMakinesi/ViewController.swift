//
//  ViewController.swift
//  hesapMakinesi
//
//  Created by Gizem on 9.06.2022.
//

import UIKit
// burada tanımlarsam tüm sınıflardan ulaşabilirim
class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    //fonksiyon dışında oluşturduğumuzda her fonksiyonda kullanabiliriz her seferinde let tanımlamamıza gerek yok
    
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //app açıldığında bir şey göstermek istersem buraya ekleyebilirim
        print("github deneme")
    }


    @IBAction func sumClicked(_ sender: Any) {
        //ünlem koyma nedeni: ilk ünlem textfieldden bir text değeri gelecek demek, ikinci ünlem bunu kessinlikle inte çevirebilirsin demek
        // burada harf girildiğinde program patlar
        // kontrol için if yazılırsa patlamaz
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
        
    @IBAction func minusClicked(_ sender: Any) {
    //bu fonksiyonun içinde tanımladığım hiç bir objeyi başka fonksiyonda kullanamam.
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }    }
    
    @IBAction func multipyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }    }
    
    @IBAction func divideClicked(_ sender: Any) {      if let firstNumber = Int(firstText.text!) {
        if let secondNumber = Int(secondText.text!) {
            result = firstNumber / secondNumber
            resultLabel.text = String(result)
        }
        
    }
    }
}

