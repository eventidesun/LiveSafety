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
        HStack {
            Text("Hello!")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading)
            Spacer() // Pushes the text to the top
        }
        .padding(.top) // Add padding to the top edge
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
        VStack(alignment: .center, spacing: 5) {
            Text("Undo Action")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Rectangle()
                .frame(width: 125, height: 3)
                .foregroundColor(Color(red: 82/255, green: 0/255, blue: 255/255))
                .padding(.top, -5)
        }
        .padding()
    }
    
    
}

#Preview {
    HomePage()
}
