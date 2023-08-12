//
//  GameView.swift
//  VariableTypesTutorial
//
//  Created by Jeremy Skrdlant on 8/11/23.
//

import SwiftUI
import AVFoundation

struct GameView: View {
    //State variables are variables that the user can change while interacting with the app. They are watched so that the screen can automatically update when they do.
    @State var score = 0 //What type of var is this?
    @State var currentItem = 0
    
    //These are of type AVAudioPlayer optional. They might have sound or they might not. Luckily they work so you should hear a pleasent sound with every correct answer and an explosion with every wrong answer.
    @State private var correctSound:AVAudioPlayer?
    @State private var wrongSound:AVAudioPlayer?
    
    //These are the possible questions you get. Note that the way the logic is set up, the order and types do matter.  They are randomly picked from this array to make it more interesting.
    var questions = ["true", "false", "1", "100", "80", "4.5", "1.2", "0.008", "\"Bob\"", "\"Guitar\""]
    
    //This chooses a random number between 0 and the size of the array minus 1.  Arrays start at 0 so questions[0] is equal to "true".  We need to do the minus 1 because the count starts at 1 so we could possibly request a spot that doesn't exist if we didn't subtract the 1.  We will go in much more detail of this when we get to arrays.
    func chooseRandomItem(){
        currentItem = Int.random(in: 0...questions.count - 1)
    }
    
    var body: some View {
        VStack{
            //This goes into the array at the spot of current Item.  It then shows that text in the text area.  You will note that this is a true variable because it changes as you play the game.
            Text(questions[currentItem])
                .bold()
                .font(.system(size: 40))
                .foregroundColor(Color(red: 0.3, green: 0.3, blue: 0.3))
                .padding(.top, 50.0)
                .kerning(5)
            
            Spacer()
            Button("Bool") {
                //If the array item we are looking at is one of the first two items "true" or "false", then we add 1 to the score and play the good sound.
                if (currentItem == 0 || currentItem == 1){
                    score += 1
                    correctSound?.play()
                }else {
                    //Ooops, you chose wrong so we punish you by exploding something.
                    wrongSound?.play()
                }
                chooseRandomItem()
            }
            .bold()
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .padding(.vertical, 20)
            
            //The rest of the buttons work the same except they refer to the elements in the array that are of their type.
            Button("Int") {
                if (currentItem == 2 || currentItem == 3 || currentItem == 4){
                    score += 1
                    correctSound?.play()
                }else {
                    wrongSound?.play()
                }
                chooseRandomItem()
            }
            .bold()
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .padding(.vertical, 20)
            
            Button("Double") {
                if (currentItem == 5 || currentItem == 6 || currentItem == 7){
                    score += 1
                    correctSound?.play()
                }else {
                    wrongSound?.play()
                }
                chooseRandomItem()
            }
            .bold()
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .padding(.vertical, 20)
            
            
            Button("String") {
                if(currentItem > 7){
                    score += 1
                    correctSound?.play()
                }else {
                    wrongSound?.play()
                }
                chooseRandomItem()
            }.bold()
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .padding(.vertical, 20)
                Spacer()
            
            //You will notice that this string has a variable in it.  \() allows you to put a variable in a string.  We can not just type 1 or 2 because that number changes as you play the game.
            Text("You have answered \(score) of the questions correctly.")
                .padding()
            Spacer()
        }
        .onAppear{
            chooseRandomItem()
            guard let correctURL = Bundle.main.url(forResource: "Correct", withExtension: "wav") else {
                return
            }
            guard let wrongURL = Bundle.main.url(forResource: "Wrong", withExtension: "wav") else {
                return
            }
            
            Task{
                correctSound = try AVAudioPlayer(contentsOf: correctURL)
                wrongSound = try AVAudioPlayer(contentsOf: wrongURL)
            }
        }
    }
    
}



struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
