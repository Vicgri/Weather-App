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
        Text("Bergen, Norge")
          .font(.system(size: 32, weight: .medium, design: .default))
          .foregroundColor(.white)
          .padding()
        
        VStack(spacing: 1)
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
        .padding(.bottom, 40)
        
        HStack (spacing: 20) {
          WeatherDayView(dayOfWeek: "MAN",
                         imageName: "cloud.sun.fill",
                         temperature: 18)
          
          WeatherDayView(dayOfWeek: "TIR",
                         imageName: "cloud.fill",
                         temperature: 13)
          
          WeatherDayView(dayOfWeek: "ONS",
                         imageName: "cloud.sun.rain.fill",
                         temperature: 16)
          
          WeatherDayView(dayOfWeek: "TORS",
                         imageName: "sun.max.fill",
                         temperature: 22)
          
          WeatherDayView(dayOfWeek: "FRE",
                         imageName: "wind",
                         temperature: 20)
          
          
        }

        Spacer()
        
        Button {
          print("tapped")
        } label: {
          Text("Se hele tabellen")
            .frame(width: 280, height: 50)
            .background(Color.white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(5)
      
        }
        
        Spacer()
        
        
      }
    }
  }
  
  
}


#Preview {
  ContentView()
};

struct WeatherDayView: View {
  
  var dayOfWeek: String
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack
    {
      Text(dayOfWeek)
        .font(.system(size: 20))
        .bold()
        .foregroundColor(.white)
      
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 50, height: 50)
        .padding(3)
      
      Text("\(temperature)°")
        .foregroundColor(.white)
        .font(.system(size: 22, weight: .bold))
    }
  }
}
