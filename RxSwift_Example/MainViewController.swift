//
//  ViewController.swift
//  RxSwift_Example
//
//  Created by MERT MUTLU on 15.04.2024.
//

import UIKit
import RxSwift

class MainViewController: UIViewController {
    
    @IBOutlet private weak var lblResult: UILabel!
    @IBOutlet private weak var textFieldNum1: UITextField!
    @IBOutlet private weak var textfieldNum2: UITextField!
    @IBOutlet private weak var btnSum: UIButton!
    @IBOutlet private weak var btnMultpl: UIButton!
    
    private var viewModel = MainViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func initialize(){
        textFieldNum1.placeholder = "Number 1"
        textfieldNum2 .placeholder = "Number 2"
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

