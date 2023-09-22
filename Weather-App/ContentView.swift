//
//  ContentView.swift
//  Weather-App
//
//  Created by Victoria Grimen on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack
    {
      LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                     startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                     endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      
      
      VStack 
      {
        Text("Bergen, Norway")
          .font(.system(size: 32, weight: .medium, design: .default))
          .foregroundColor(.white)
          .padding()
        Spacer()
        
      }
    }
    
    
  }
}

#Preview {
  ContentView()
};
