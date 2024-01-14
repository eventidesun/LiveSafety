//
//  HomePage.swift
//  LiveSafety
//
//  Created by Vaishnavi Gudimella on 2024-01-13.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            // Background
            Color.black.ignoresSafeArea()

            // Main content
            VStack(alignment: .center) {
                greetingText
                sendAlertButton
                undoActionButton
            }
        }
    }

    // Extracted subviews for better readability and reusability
    private var greetingText: some View {
        Text("Hi!")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 200, alignment: .top)
    }

    private var sendAlertButton: some View {
        Text("Send Alert")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(width: 300, height: 100)
            .background(Color(red: 82/255, green: 0/255, blue: 255/255))
            .cornerRadius(30)
    }

    private var undoActionButton: some View {
        Text("Undo Action")
            .font(.title3)
            .foregroundColor(.white)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .underline()
            .padding()
    }
}

#Preview {
    HomePage()
}
