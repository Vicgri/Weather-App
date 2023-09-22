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
        
        VStack(spacing: 8)
        {
          Image(systemName: "cloud.sun.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
          
          Text("15°C")
            .font(.system(size: 70, weight: .medium))
            .foregroundColor(.white)
          
        }
        HStack (spacing: 10) {
      
          VStack
          {
            Text("MAN")
              .font(.system(size: 20))
              .bold()
              .foregroundColor(.white)
            
            Image(systemName: "cloud.sun.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
              .padding(3)
            
            Text("18°")
              .foregroundColor(.white)
              .font(.system(size: 22, weight: .bold))
          }
          VStack
          {
            Text("TIR")
              .font(.system(size: 20))
              .bold()
              .foregroundColor(.white)
            
            Image(systemName: "cloud.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
              .padding(3)
            
            Text("13°")
              .foregroundColor(.white)
              .font(.system(size: 22, weight: .bold))
          }
          VStack
          {
            Text("ONS")
              .font(.system(size: 20))
              .bold()
              .foregroundColor(.white)
            
            Image(systemName: "cloud.sun.rain.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
              .padding(3)
            
            Text("16°")
              .foregroundColor(.white)
              .font(.system(size: 22, weight: .bold))
          }
          VStack
          {
            Text("TORS")
              .font(.system(size: 20))
              .bold()
              .foregroundColor(.white)
            
            Image(systemName: "sun.max.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
              .padding(3)
            
            Text("22°")
              .foregroundColor(.white)
              .font(.system(size: 22, weight: .bold))
          }
          VStack
          {
            Text("FRE")
              .font(.system(size: 20))
              .bold()
              .foregroundColor(.white)
            
            Image(systemName: "wind")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 50, height: 50)
              .padding(3)
            
            Text("20°")
              .foregroundColor(.white)
              .font(.system(size: 22, weight: .bold))
          }
          
        }
        .padding()
      }
      Spacer()
    }
  }
  
  
}


#Preview {
  ContentView()
};
