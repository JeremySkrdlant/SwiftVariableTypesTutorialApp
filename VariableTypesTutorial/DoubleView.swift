//
//  DoubleView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI

struct DoubleView: View {
    var body: some View {
            VStack{
                Text("Double")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                Spacer()
                Text("0.0034 in Bitcoin was $100.00 in us currency at the time this app was made.")
                    .font(.system(size:30))
                    .foregroundColor(.gray)
                Divider()
                Text("Numbers with a decimal")
                    .font(.system(size:30))
                Spacer()
                NavigationLink(destination: StringView()){ Text("Continue")}
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .border(Color.gray)
                    .shadow(radius: 5)
                    .padding(.bottom, 50)
            }
            //This adds padding around the entire stack of items.
            .padding()
        }
}

struct DoubleView_Previews: PreviewProvider {
    static var previews: some View {
        DoubleView()
    }
}
