//
//  calculatorBrain.swift
//  Health Status
//
//  Created by Keven Nunes on 02/06/22.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiFormat = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormat
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "No advice"
    }
    
    mutating func calculatorBMI(height: Float,weight: Float) {
        let bmiValue = weight / pow(height,2)
        
        if bmiValue < 18 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }
    }
}
