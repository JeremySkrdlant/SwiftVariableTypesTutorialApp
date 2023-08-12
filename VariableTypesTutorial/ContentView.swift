//
//  ContentView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                //Text takes a string. You can see that it is red surrounded by quotes.
                Text("A variable lets you store a value to use later.  This value can be changed.  The types of these are the same types as constants.  In this app, we are going to look at a few of the types available in Swift.")
                    .lineSpacing(10)
                    .padding()
                
                //When you press the continue button, the BoolView file is pushed on to the view stack.
                NavigationLink(destination: BoolView()){ Text("Continue")}
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .border(Color.gray)
                    .shadow(radius: 5)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
