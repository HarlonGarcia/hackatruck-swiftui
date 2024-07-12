//
//  SwiftUIView4.swift
//  Aula01
//
//  Created by Turma02-8 on 11/07/24.
//

import SwiftUI

struct SwiftUIView4: View {
    @State var weight: Double = 0
    @State var height: Double = 0
    @State var bodyState: String = "Normal"
    @State var currentColor: Color = .olive
    
    func getBodyState() -> Void {
        let imc = weight / pow(height / 100, 2)

        if imc < 18.5 {
            bodyState = "Abaixo do peso"
            currentColor = .oliveOpaque
        }

        else if imc < 25 {
            bodyState = "Normal"
            currentColor = .olive
        }
        
        else if imc < 30 {
            bodyState = "Acima do peso"
            currentColor = .sunshine

        }
        
        else {
            bodyState = "Obesidade"
            currentColor = .mostard
        }
    }
    
    var body: some View {
        GeometryReader { screen in
            VStack {
                VStack {
                    Text("Calculadora de IMC")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    VStack(spacing: 18) {
                        TextField("Enter your weight", value: $weight, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .textContentType(.oneTimeCode)
                            .textFieldStyle(.roundedBorder)
                            .frame(maxWidth: 300)
                            .multilineTextAlignment(.center)
                        
                        TextField("Enter your height", value: $height, formatter: NumberFormatter())
                            .keyboardType(.decimalPad)
                            .textContentType(.oneTimeCode)
                            .textFieldStyle(.roundedBorder)
                            .frame(maxWidth: 300)
                            .multilineTextAlignment(.center)
                    }
                    .padding(.vertical, 24)
                    
                    Button("Calcular") {
                        getBodyState()
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(6.0)
                }
                
                Spacer()

                Text(bodyState)
                    .font(.system(size: 36))
                    .bold()
                    .foregroundStyle(.white)
                
                Spacer()
                
                Image("tabela-IMC")
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: screen.size.width, height: screen.size.height)
            .background(currentColor)
        }
    }
}

#Preview {
    SwiftUIView4()
}
