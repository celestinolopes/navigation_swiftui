//
//  ContentView.swift
//  navigation
//
//  Created by Celestino Lopes on 23/03/26.
//

import SwiftUI



struct ContentView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                 Spacer().frame(height: 20)
                
                TextField("Insert your name", text: $name)
                    .keyboardType(.alphabet)
                    .padding(10)
                    .overlay(Rectangle().stroke())
                    .cornerRadius(2)
                
                Spacer().frame(height: 25)
                
                TextField("Insert your age", text: $age)
                    .keyboardType(.numberPad)
                    .padding(10)
                    .overlay(Rectangle().stroke())
                    .cornerRadius(2)
                
                Spacer()
                NavigationLink(destination:ProcessView(name: "\(name)", age: "\(age)"),label: {
                    Text("Okay")
                        .font(.title)
                        .padding()
                        .overlay(Capsule().stroke())
                })
            }.navigationTitle("Navigation Application")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
