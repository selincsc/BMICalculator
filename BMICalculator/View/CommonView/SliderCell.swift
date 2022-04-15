//
//  SliderCell.swift
//  BMICalculator
//
//

import SwiftUI

struct SliderCell: View {
    var max : Int
    var sliderTitle : String
    @Binding var sliderValue : Double
    
    var body: some View {
        VStack{
            Text(" \(sliderTitle) : \(sliderValue.doubleToInt)")
            Slider(value: $sliderValue,in: 0...max.intToDouble)
                .background(.orange)
                .padding(.horizontal)
                .cornerRadius(15)
        }
    
    }
}

struct SliderCell_Previews: PreviewProvider {
    static var previews: some View {
        SliderCell(max: 200, sliderTitle: "Kilonuz", sliderValue: .constant(10.0))
    }
}
