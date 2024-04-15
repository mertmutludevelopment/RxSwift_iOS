//
//  Repository.swift
//  RxSwift_Example
//
//  Created by MERT MUTLU on 15.04.2024.
//

import Foundation
import RxSwift

class Repository{
    
    
    var result = BehaviorSubject<String>(value: "0")
    
    
    func Sum(number1 : String , number2 : String){
        if let num1 = Int(number1) , let num2 = Int(number2){
            let total = num1 + num2
            
            result.onNext(String(total))
        }
    }
    
    func Multiplication(number1 : String , number2 : String){
        if let num1 = Int(number1) , let num2 = Int(number2){
            let multpl = num1 * num2
            
            result.onNext(String(multpl))
        }
    }
}
