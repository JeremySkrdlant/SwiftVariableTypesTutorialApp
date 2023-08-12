//
//  IntView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI

struct IntView: View {
    var body: some View {
            VStack{
                // .blue is a type of Color.  We are going over the basic types now but know that they are not the only types that exist in swift.  You can even create your own types.  
                Text("Int")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                Spacer()
                Text("Are there 8 or 9 planets?")
                    .font(.system(size:30))
                    .foregroundColor(.gray)
                Divider()
                Text("Numbers without a decimal")
                    .font(.system(size:30))
                Spacer()
                NavigationLink(destination: DoubleView()){ Text("Continue")}
                    .padding(20)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .border(Color.gray)
                    .shadow(radius: 5)
                    .padding(.bottom, 50)
            }
        }
}

struct IntView_Previews: PreviewProvider {
    static var previews: some View {
        IntView()
    }
}
