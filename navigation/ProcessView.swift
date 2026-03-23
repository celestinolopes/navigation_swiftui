//
//  ProcessView.swift
//  navigation
//
//  Created by Celestino Lopes on 23/03/26.
//

import SwiftUI

struct ProcessView: View {
    let name: String
    var age: String
    var isValidAge: Bool{
        
        if let convertedAge = Int(age){
            return convertedAge>18
        }
        else{
            return false
        }
    }
    
    var colorBackground : Color {
        isValidAge ? Color.green : Color.red
    }
    
    
    var body: some View {
        ZStack{
            colorBackground.ignoresSafeArea()
            
            Text("Welcome to board \(name), your age \(age) is valid").padding(10)
        }
    }
}

#Preview {
    ProcessView(name: "Celestino", age: "12")
}

