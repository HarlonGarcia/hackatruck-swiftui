//
//  ContentView.swift
//  Aula01
//
//  Created by Turma02-8 on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "")
                    .frame(width: 100, height: 100)
                    .background(.red)
                
                Spacer.init()

                Image(systemName: "")
                    .frame(width: 100, height: 100)
                    .background(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

            }
            
            Spacer.init()

            HStack {
                Image(systemName: "")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .background(.green)
                
                Spacer.init()

                Image(systemName: "")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .background(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
