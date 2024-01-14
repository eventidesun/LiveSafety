//
//  HomePage.swift
//  LiveSafety
//
//  Created by Vaishnavi Gudimella on 2024-01-13.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                Text("Hi!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 200, alignment: .top)
                
                Text("Send Alert")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .background(Color.red)
                    .frame(width: 300, height: 100, alignment: .center)
                
                Text("Undo Action")
                    .font(.title3)
                    .foregroundColor(Color.white)
               
                }
           
        }
        
        
        }
       
    }


#Preview {
    HomePage()
}
