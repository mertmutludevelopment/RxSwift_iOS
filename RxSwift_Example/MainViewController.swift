//
//  ViewController.swift
//  RxSwift_Example
//
//  Created by MERT MUTLU on 15.04.2024.
//

import UIKit
import RxSwift

class MainViewController: UIViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var textFieldNum1: UITextField!
    @IBOutlet weak var textfieldNum2: UITextField!
    @IBOutlet weak var btnSum: UIButton!
    @IBOutlet weak var btnMultpl: UIButton!
    
    var viewModel = MainViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSum.setTitle("Sum", for: .normal)
        btnMultpl.setTitle("Multiplication", for: .normal)
        
        _ = viewModel.result.subscribe(onNext: {s in
            self.lblResult.text = s
        })
    }
    
    @IBAction func actionBtnSum(_ sender: Any) {
        if let receivedNum1 = textFieldNum1.text , let recievedNum2 = textfieldNum2.text {
            viewModel.Sum(number1: receivedNum1, number2: recievedNum2)
        }
        
    }
    @IBAction func actionBtnMultiplication(_ sender: Any) {
        if let receivedNum1 = textFieldNum1.text , let recievedNum2 = textfieldNum2.text {
            viewModel.Multiplication(number1: receivedNum1, number2: recievedNum2)
        }
    }
    
}

