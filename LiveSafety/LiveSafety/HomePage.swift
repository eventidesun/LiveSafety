//
//  HomePage.swift
//  LiveSafety
//
//  Created by Vaishnavi Gudimella on 2024-01-13.
//

import SwiftUI

struct HomePage: View {
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            // Background
            Color.black.ignoresSafeArea()

            // Main content
            VStack(alignment: .center) {
                greetingText
                Spacer()
                sendAlertButton
                undoActionButton
            }
        }
    }

    // Extracted subviews for better readability and reusability
    private var greetingText: some View {
        HStack {
            Text("Hello!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding(.leading)
            Spacer() // Pushes the text to the top
        }
        .padding(EdgeInsets(top: 25, leading: 25, bottom: 0, trailing: 0))

    }

    private var sendAlertButton: some View {
        Button(action: {
            self.showAlert = true
        }) {
            Text("Send Alert")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 300, height: 100)
                .background(Color(red: 82/255, green: 0/255, blue: 255/255))
                .cornerRadius(30)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Alert Sent"), message: Text("Your alert and live location have been sent successfully."))
        }
        
        
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
        .padding([.top, .bottom], 10)
        .padding(EdgeInsets(top: 0, leading: 0, bottom: 300, trailing: 0))
    }
    
    
}

#Preview {
    HomePage()
}
