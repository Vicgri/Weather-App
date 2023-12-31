//
//  ContentView.swift
//  Weather-App
//
//  Created by Victoria Grimen on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isNight = false
  
  var body: some View {
    ZStack
    {
      BackgroundView(isNight: $isNight)
      
      VStack {
        MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                              temperature: isNight ? 5 : 15)
        
        CityTextView(cityName: "Bergen, Norway")
        
        
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
          isNight.toggle()
        } label: {
          WeatherButton(title: isNight ? "Light Mode" : "Dark Mode",
                        textColor: .white,
                        backgroundColor: .mint)
        }
        
        Spacer()
        
      }
      
    }
    
  }
}


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
        .symbolRenderingMode(.multicolor)
        .resizable()
      // .foregroundStyle(.white, .yellow, .green)
        .aspectRatio(contentMode: .fit)
        .frame(width: 50, height: 50)
        .padding(3)
      
      Text("\(temperature)°")
        .foregroundColor(.white)
        .font(.system(size: 22, weight: .bold))
    }
  }
}

struct BackgroundView: View {
  
  @Binding var isNight: Bool
  
  var body: some View {
    //    LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
    //                                      isNight ? .gray : Color("lightBlue")] ),
    //                   startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
    //                   endPoint: .bottomTrailing)
    //    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    
    ContainerRelativeShape()
      .fill(isNight ? Color.black.gradient : Color.blue.gradient)
      .ignoresSafeArea()
    
  }
}

struct CityTextView: View {
  
  var cityName: String
  
  var body: some View {
    Text(cityName)
      .font(.system(size: 32, weight: .medium, design: .default))
      .foregroundColor(.white)
      .padding()
  }
}

struct MainWeatherStatusView: View {
  
  var imageName: String
  var temperature: Int
  
  var body: some View {
    VStack(spacing: 1)
    {
      Image(systemName: imageName)
        .renderingMode(.original)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: 180, height: 180)
      
      Text("\(temperature)°")
        .font(.system(size: 70, weight: .medium))
        .foregroundColor(.white)
      
    }
    .padding(.bottom, 40)
  }
}

struct WeatherButton: View {
  
  var title: String
  var textColor: Color
  var backgroundColor: Color
  
  var body: some View {
    Text(title)
      .frame(width: 280, height: 50)
      .background(backgroundColor.gradient)
      .foregroundColor(textColor)
      .font(.system(size: 20, weight: .bold, design: .default))
      .cornerRadius(10)
  }
}



#Preview {
  ContentView()
};
