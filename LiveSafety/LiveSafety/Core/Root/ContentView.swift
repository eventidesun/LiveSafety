//
//  ContentView.swift
//  LiveSafety
//
//  Created by Vaishnavi Gudimella on 2024-01-13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                HomePage()
            } else {
                RegistrationView()
            }
        }
    }
}

#Preview {
    ContentView()
}
