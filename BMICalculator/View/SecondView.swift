//
//  SecondView.swift
//  BMICalculator
//
//

import SwiftUI

struct SecondView: View {
    @State var bmi : Double
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        ZStack{
            Color.purple.ignoresSafeArea()
            VStack(spacing: 35){
                Spacer()
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: width*0.5, height: height*0.3)
                    .foregroundColor(.orange)
                
                Text("BMİ Değeriniz: \(bmi.doubleToInt)")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                    .minimumScaleFactor(0.3)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .padding(.horizontal,30)
                    .padding(.vertical,10)
                Spacer(minLength: 0)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(bmi: 20.0)
    }
}
