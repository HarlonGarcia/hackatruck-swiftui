//
//  SwiftUIView3.swift
//  Aula01
//
//  Created by Turma02-8 on 11/07/24.
//

import SwiftUI

struct SwiftUIView3: View {
    @State var username: String = ""
    @State var showAlert: Bool = false

    let colors: [Color] =
        [.red, .orange, .yellow, .green, .blue, .purple]

    var body: some View {
        ZStack() {
            Image("hackatruck2")
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
                .opacity(0.4)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .center) {
                if username.isEmpty {
                    Text("Bem vindo")
                        .padding(.bottom, 32)
                        .font(.system(size: 32))
                        .bold()
                } else {
                    Text("Bem vindo, \(username)")
                        .padding(.bottom, 32)
                        .font(.system(size: 32))
                        .bold()

                }

                TextField("Your name", text: $username)
                    .textFieldStyle(.automatic)
                    .frame(maxWidth: 100)
                    .font(.callout)

                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .shadow(radius: 5)
                
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230)
                    .offset()
                
                Spacer()

                Button("Entrar", action: {
                    showAlert = true
                })
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("ALERTA !"),
                          message: Text("Você irá iniciar o desafio da aula agora"),
                          dismissButton: .default(Text("Vamos lá!")))
                }
                .font(.system(size: 18))
            }
            .padding(32)
        }
    }
}

#Preview {
    SwiftUIView3()
}
