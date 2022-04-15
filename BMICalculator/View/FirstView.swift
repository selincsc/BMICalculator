//
//  ContentView.swift
//  BMICalculator
//
//

import SwiftUI

struct FirstView: View {
    
    @State var kilo : Double = 0.0
    @State var boy : Double = 0.0
    @StateObject var viewModel = BMIViewModel()
    var body: some View {
        NavigationView {
            ZStack{
                Color.purple.ignoresSafeArea()
                VStack{
                    Text(Constants.bmiCalculatorText)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .padding(.top,50)
                    
                    Spacer(minLength: 0)
                    SliderCell(max: 200, sliderTitle: Constants.yourWeight, sliderValue: $kilo)
                        .padding(.bottom,25)
                    SliderCell(max: 200, sliderTitle: Constants.yourHeight, sliderValue: $boy)
                        .padding(.bottom,50)
                    Button {
                        viewModel.bmiCalculate(boy: boy, kilo: kilo)
                    } label: {
                        RoundedRectangle(cornerRadius: 25, style: .circular)
                            .foregroundColor(kilo.isZero || boy.isZero ? .orange.opacity(0.1) : .orange)
                            .overlay(Text(Constants.bmiCalculate).foregroundColor(.white).font(.system(size: 25)))
                            .frame(height: 50)
                            .padding(.horizontal,50)
                        
                    }.disabled(kilo.isZero || boy.isZero ? true : false)
                        
                    Spacer(minLength: 0)
                }
            }
        }
        .sheet(isPresented: $viewModel.link){} content: {
            SecondView(bmi: Double(viewModel.vki))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
