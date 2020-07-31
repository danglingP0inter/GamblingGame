//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Kirti Verma on 7/30/20.
//  Copyright © 2020 Kirti Verma. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.init(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            Rectangle()
                .foregroundColor(Color.init(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle.init(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                Text("Credits: 1000")
                    .padding(10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()

                HStack {
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("donut")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("lemon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                }.padding(10)       // alternatively a spacer would also work
                
                Spacer()
                
                Button(action: {
                    // to do
                }, label: {
                    Text("Spin")
                        .bold()
                        .padding([.leading, .trailing], 10)
                        .padding()
                        .background(Color.pink)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                })
                
                Spacer()
            }
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
