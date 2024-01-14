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
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack { // Wrap everything in a VStack
            // Heading
            Text("Create Account")
                .padding(.top, 100)
            
            // Forms
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
            .padding(.top, 30) // Spacing between text and form fields
            
            // Sign up button
            Button {
                Task {
                    try await viewModel.createUser(withEmail: email,
                                                   password: password,
                                                   fullname: fullname)
                }
            } label: {
                HStack {
                    Text("SIGN UP")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .frame(width: UIScreen.main.bounds.width - 280, height: 40) // FIXME: fix width
            }
            .background(Color(.clear)) // FIXME: does clear work?
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.purple, lineWidth: 2) // FIXME: make the purple different
            )
            .padding(.top, 80)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            
            // Navigation Link to LoginView
            NavigationLink {
                LoginView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    Text("Log in")
                        .fontWeight(.bold)
                }
                .font(.system(size: 14))
                .foregroundColor(.black)
            }
            .padding(.top, 100)
        }
    }
}

//MARK: - AuthenticationFormProtocol

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullname.isEmpty
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
