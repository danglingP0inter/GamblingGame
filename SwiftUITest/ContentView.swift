//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Kirti Verma on 7/30/20.
//  Copyright © 2020 Kirti Verma. All rights reserved.
//

import SwiftUI

//Play this and you'll know why one shouldn't gamble :)
struct ContentView: View {
    
    @State private var credits = 1000
    @State private var index1 = 0
    @State private var index2 = 1
    @State private var index3 = 2
    
    private var images: [Image] = [Image("apple"),
                                   Image("donut"),
                                   Image("lemon")]
    
    func onSpin() {
        index1 = Int.random(in: 0..<3)
        index2 = Int.random(in: 0..<3)
        index3 = Int.random(in: 0..<3)
        
        if (index1 == index2 && index2 == index3) {
            credits += 100
        } else {
            credits -= 50
        }
    }
    
    var body: some View {
        ZStack {
            // background
            Rectangle()
                .foregroundColor(Color.init(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            //tilted card over background
            Rectangle()
                .foregroundColor(Color.init(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle.init(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                //heading
                HStack {
                    Image(systemName: "star.fill")    //SFSymbols: They're cool !!!
                        .foregroundColor(.yellow)
                    Text("SwiftUI Slots")
                        .bold()
                        .foregroundColor(.white)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }.scaleEffect(2)
                
                Spacer()
                
                //Credits
                Text("Credits: \(credits)")
                    .padding(10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                
                Spacer()

                HStack {
                    images[index1]
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    images[index2]
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    images[index3]
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                }.padding(10)       // alternatively a spacer would also work
                
                Spacer()
                
                Button(action: {
                    self.onSpin()
                }, label: {
                    Text("Spin")
                        .bold()
                        .padding([.leading, .trailing], 30)
                        .padding(.all, 10)
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
