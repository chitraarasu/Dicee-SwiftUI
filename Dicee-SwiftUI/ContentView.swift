//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by kirshi on 12/24/22.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber: Int = 1
   @State var rightDiceNumber: Int = 1
    
    var body: some View {
        ZStack{
            Image("background").resizable().ignoresSafeArea()
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.all)
                Spacer()
                Button(action:  {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding(.bottom)
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
