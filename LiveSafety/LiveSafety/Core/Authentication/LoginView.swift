//
//  LoginView.swift
//  SafetyApp
//
//  Created by Anne Liu on 2024-01-13.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack {
                //form fields
                VStack(spacing: 24) {
                    inputView(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    inputView(text: $password,
                              title: "Password",
                              placeholder: "Enter your password",
                              isSecureField: true)
                }
                .padding(.horizontal)
                .padding(.top, 30) //spacing between text and form fields
                
                //sign in button
                
                Button {
                    print("Log user in..")
                } label: {
                    HStack {
                        Text("Log In")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 80, height: 48) //FIXME: fix width
                }
                .background(Color(.clear)) //FIXME: does clear work?
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.purple, lineWidth: 2) //FIXME: make the purple different
                )
                .padding(.top, 24)
                
                //sign up button
                
                NavigationLink {
                    
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account?")
                        Text("Log In")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
