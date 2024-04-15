//
//  MainViewModel.swift
//  RxSwift_Example
//
//  Created by MERT MUTLU on 15.04.2024.
//

import Foundation
import RxSwift

class MainViewModel{
    
    var result = BehaviorSubject<String>(value: "0")
    var repo = Repository()
    
    init (){
        result = repo.result
    }
    
    func Sum(number1 : String , number2 : String){
        repo.Sum(number1: number1, number2: number2)
    }
    
    func Multiplication(number1 : String , number2 : String){
        repo.Multiplication(number1: number1, number2: number2)
    }
}
