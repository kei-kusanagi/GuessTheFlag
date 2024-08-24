//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Juan Carlos Robledo Morales on 23/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //            VStack(spacing: 0){
            //                Color.red
            //                Color.blue
            //            }
            //            RadialGradient(colors: [.red, .black], center: .center, startRadius: 20, endRadius: 100)
            //            LinearGradient(colors: [.red, .purple], startPoint: .top, endPoint: .bottom)
            //            AsyncImage(url: URL(string: "https://images.seeklogo.com/logo-png/52/1/macross-logo-png_seeklogo-527293.png")) { image in
            //                image
            //                    .resizable()
            //                    .aspectRatio(contentMode: .fit)
            //                    .frame(width: 200, height: 200)
            //            } placeholder: {
            //                ProgressView()
            //            }
            //            AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
            //            Button("Delete selection", action: executeDelete)
            //
            //
            //            Button("Button 1"){}
            //                .buttonStyle(.bordered)
            //
            //            Button("Button 2", role: .destructive){}
            //                .buttonStyle(.bordered)
            //
            //            Button("Button 3"){}
            //                .buttonStyle(.borderedProminent)
            //                .tint(.indigo)
            //
            //            Button("Button 4", role: .destructive){}
            //                .buttonStyle(.borderedProminent)
            //
            //
            //
            //        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ////            .foregroundStyle(.white)
            //            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            //            .background(.green.gradient)
//            Image(decorative: "Macross")
//            
//            Image(systemName: "pencil.circle.fill")
//                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                .font(.largeTitle)
            
            Button{
                print("Button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
        }
    }
    func executeDelete(){
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
