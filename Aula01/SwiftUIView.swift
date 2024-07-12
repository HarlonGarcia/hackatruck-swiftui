//
//  SwiftUIView.swift
//  Aula01
//
//  Created by Turma02-8 on 10/07/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Spacer()
        
        HStack {
            Image("hackatruck")
                .resizable()
                .clipShape(Circle())
                .frame(width: 120, height: 120)
            
            Spacer()
            
            VStack(spacing: 10) {
                Text("HackaTruck")
                    .foregroundColor(.red)
                    .font(.system(size: 20))

                Text("77 Universidades")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))

                Text("5 regiões do Brasil")
                    .foregroundColor(.yellow)
                    .font(.system(size: 20))
            }
        }
        .padding(32)
        
        Spacer()
    }
}

#Preview {
    SwiftUIView()
}
