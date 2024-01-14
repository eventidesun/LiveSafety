//
//  HomePage.swift
//  LiveSafety
//
//  Created by Vaishnavi Gudimella on 2024-01-13.
//

import SwiftUI

struct HomePage: View {
    @State private var showNotification = false
    
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
            
            // Notification View
            if showNotification {
                notificationView
                    .transition(.opacity)
                    .onAppear {
                        // fade out after 2 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showNotification = false
                            }
                        }
                    }
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
            withAnimation {
                showNotification = true
            }
        }) {
            Text("Send Alert")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 300, height: 100)
                .background(Color(red: 82/255, green: 0/255, blue: 255/255))
                .cornerRadius(30)
        }
    }
    
    private var notificationView: some View {
        Text("Alert and live location sent")
            .font(.headline)
            .foregroundStyle(.white)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding()
            .opacity(showNotification ? 1 : 0)
    }

    private var undoActionButton: some View {
        Button(action: {
            
        }) {
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
    
    
}

#Preview {
    HomePage()
}
