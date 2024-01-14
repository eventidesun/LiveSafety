//
//  RegistrationView.swift
//  LiveSafetyApp
//
//  Created by Anne Liu on 2024-01-13.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
        @State private var fullname = ""
        @State private var password = ""
        @State private var confirmPassword = ""
        @Environment(\.dismiss) var dismiss
    
    var body: some View {
        //Heading
        
        Text("Create Account")
            .padding(.top, 100)
        
        //forms
        VStack(spacing: 24) {
            inputView(text: $email,
                        title: "Email Address",
                        placeholder: "name@example.com")
            .autocapitalization(.none)

            inputView(text: $fullname,
                        title: "Full Name",
                        placeholder: "Enter your name")

            inputView(text: $password,
                        title: "Password",
                        placeholder: "Enter your password",
                        isSecureField: true)
            
            inputView(text: $confirmPassword,
                        title: "Confirm Password",
                        placeholder: "Confirm your password",
                        isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 30) //spacing between text and form fields

        Button {
            print("Sign user up..")
        } label: {
            HStack {
                Text("SIGN UP")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
            .frame(width: UIScreen.main.bounds.width - 280, height: 40) //FIXME: fix width
        }
        .background(Color(.clear)) //FIXME: does clear work?
        .cornerRadius(30)
        .overlay(
            RoundedRectangle(cornerRadius: 30)
                .stroke(Color.purple, lineWidth: 2) //FIXME: make the purple different
        )
        .padding(.top, 80)

        Spacer()
    }
}




#Preview {
    RegistrationView()
}
