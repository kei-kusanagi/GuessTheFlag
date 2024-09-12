//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Juan Carlos Robledo Morales on 23/08/24.
//

import SwiftUI

struct FlagImage: View{
    var country: String
    
    var body: some View{
        Image(country)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
@State private var showingScore = false
@State private var showingFinalScore = false
    
    @State private var scoreTitle = ""
    @State private var userScore: Int = 0
    @State private var globalCount: Int = 8
    
    @State private var rotationAmount = 0.0
    @State private var opacityAmount = 1.0

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "✅ Correct ✅"
            userScore += 1
            withAnimation{
                rotationAmount += 360
            }
            
        } else {
            scoreTitle = "❌ Incorrect 😅"
        }
        globalCount -= 1
        if globalCount == 0 {
            showingFinalScore = true
        } else {
            showingScore =  true
        }
    }
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        rotationAmount = 0
        opacityAmount = 1.0
    }
    
    func resetGame(){
        userScore = 0
        globalCount = 8
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
           VStack {
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)
                VStack(spacing: 15){
                    VStack{
                        Text("Tap the flag of")
                            .font(.subheadline.weight(.heavy))

                            .foregroundStyle(.secondary)
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3){number in
                        Button{
                            flagTapped(number)
                            withAnimation{
                                opacityAmount = 0.25
                            }
                            
                        } label: {
                            FlagImage(country: countries[number])
                                 .rotation3DEffect(
                                     .degrees(number == correctAnswer ? rotationAmount : 0),
                                     axis: (x: 0, y: 1, z: 0)
                                 )
                                 .opacity(number == correctAnswer ? 1 : opacityAmount)
                        }
                    }
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
               VStack {
                   Text("Score: \(userScore)")
                        .foregroundStyle(.white)
                    .font(.title.bold())
                   Text("Remaining tries: \(globalCount)")
                        .foregroundStyle(.white)
                    .font(.title.bold())
               }
                Spacer()
            }.padding()
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continuar", action: askQuestion)
        } message: {
            Text("Your score is: \(userScore)")
        }
        .alert("Game Over", isPresented: $showingFinalScore) {
                    Button("Restart Game 🔁", action: resetGame)
                } message: {
                    Text("🎊 Final Score: \(userScore) / 8 🎊")
                }
    }
}
#Preview {
    ContentView()
}
