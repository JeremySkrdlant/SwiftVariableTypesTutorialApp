//
//  StringView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI

struct StringView: View {
    var body: some View {
            VStack{
                Text("String")
                    .font(.system(size: 50))
                    .foregroundColor(.blue)
                    .padding(.top, 100)
                Spacer()
                Text("\"It's not a bug, it's an undocumented feature.")
                    .font(.system(size:30))
                    .foregroundColor(.gray)
                Divider()
                Text("Words surrounded with quotes.")
                    .font(.system(size:30))
                Spacer()
                NavigationLink(destination: GameView()){ Text("Continue")}
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

struct StringView_Previews: PreviewProvider {
    static var previews: some View {
        StringView()
    }
}
