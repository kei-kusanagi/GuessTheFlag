//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Juan Carlos Robledo Morales on 23/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert"){
            showingAlert = true
        }.buttonStyle(.borderedProminent)
        .alert("Import message", isPresented: $showingAlert){
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        }message: {
            Text("Please read this")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.purple.gradient)
    }
}

#Preview {
    ContentView()
}
