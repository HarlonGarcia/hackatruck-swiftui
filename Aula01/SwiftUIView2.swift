//
//  SwiftUIView2.swift
//  Aula01
//
//  Created by Turma02-8 on 10/07/24.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        GeometryReader { metrics in
            VStack(spacing: 10) {
                HStack(spacing: 16) {
                    Circle()
                        .frame(width: metrics.size.width * 0.3)
                        .foregroundStyle(.gray.opacity(0.5))

                    VStack {
                        HStack(spacing: 12) {
                            VStack(spacing: 4) {
                                Text("8")
                                    .bold()
                                Text("Posts")
                            }
                            
                            VStack(spacing: 4) {
                                Text("12k")
                                    .bold()
                                Text("Seguidores")
                            }
                            
                            VStack(spacing: 4) {
                                Text("2k")
                                    .bold()
                                Text("Seguindo")
                            }
                        }
                        
                        Button("Editar perfil") {
                        }
                            .frame(width: metrics.size.width * 0.6, height: 40)
                            .background(.gray.opacity(0.5))
                            .foregroundColor(.black)
                            .bold()
                            .cornerRadius(5.0)
                    }
                }
                
                VStack(alignment: .leading) {
                    VStack(spacing: 10) {
                        Text("Nome Sobrenome")
                            .bold()

                        Text("Minha descrição é aqui, qualquer coisa")
                    }
                    .frame(alignment: .leading)
                }
                .frame(width: metrics.size.width)
                .padding(8)
                
                HStack(){
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    

                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))

                }
                
                HStack(){
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    

                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))

                }

                HStack() {
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    

                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))
                    
                    Rectangle()
                        .frame(width: metrics.size.width * 0.3, height: 100)
                        .foregroundStyle(Color.gray.opacity(0.5))

                }
            }
            .frame(width: metrics.size.width)
            
        }
    }
}

#Preview {
    SwiftUIView2()
}
