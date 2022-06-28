//
//  ContentView.swift
//  BussinessCard
//
//  Created by Kittisak Panluea on 28/6/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("demoProfile")
                    .resizable()
                    .frame(width: 200 , height: 200, alignment: .center)
                    .clipped()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.3), radius: 30, x: 10, y: 20)
                    .aspectRatio(contentMode: .fit)
                    .overlay(Circle().stroke(.white , lineWidth: 5))
                Text("Hello World")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.white)
                    .font(.custom("Pacifico-Regular", size: 40))
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                Divider()
                InfoView(text: "+66 123456789", imageName: "phone.fill")
                InfoView(text: "demo@demo.com", imageName: "envelope.fill")
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

