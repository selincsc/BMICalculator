//
//  BMIViewModel.swift
//  BMICalculator
//
//

import Foundation
import SwiftUI


class BMIViewModel : ObservableObject {
    @Published var vki = 0
    @Published var link = false
    
    func bmiCalculate(boy: Double, kilo: Double){
        print(boy)
        print(kilo)
        let boyNew = boy / 100
        vki = Int(kilo / (boyNew*boyNew))
        print(vki)
        self.link.toggle()
    }
}
