//
//  BoolView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI

struct BoolView: View {
    var body: some View {
            //The VStack means items are stacked vertically like a pile of books.
            VStack{
                // The 50 in font size is an int.
                Text("Bool")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                //This acts like a spring between the elements.
                Spacer()
                Text("To be, or not to be")
                    .font(.system(size:30))
                    .foregroundColor(.gray)
                //This puts a horizontal line in a vstack and a vertical line in an hstack.
                Divider()
                Text("True / False")
                    .font(.system(size:30))
                Spacer()
                //Click the continue to push the IntView file on top of the view stack.
                NavigationLink(destination: IntView()){ Text("Continue")}
                    .padding(20)
                    .padding(.horizontal, 20)
                    .foregroundColor(.blue)
                    .background(Color.white)
                    .border(Color.gray)
                    .shadow(radius: 5)
                    .padding(.bottom, 50)
            }
        }
}

//This is what allows us to see the preview on the right or bottom of xCode. Later on we will show you how to set custom parameters like dark mode and orientation. 
struct BoolView_Previews: PreviewProvider {
    static var previews: some View {
        BoolView()
    }
}
