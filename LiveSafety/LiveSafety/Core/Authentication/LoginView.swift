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
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                //Header
                Text("Log In")
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
                        Text("LOG IN")
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
                .padding(.top, 24)
                
                //sign up button
                
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                }
                .padding(.top, 100)
                }
            }
        }
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
