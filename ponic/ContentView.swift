//
//  ContentView.swift
//  ponic
//
//  Created by Wheezy Capowdis on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Text("Ponic")
                        .font(.largeTitle)
                        .bold()
                    Image(systemName: "chevron.down")
                        .offset(y:3)
                    Spacer()
                    
                    Image(systemName: "ellipsis.message")
                        .font(.title3)
                    Image(systemName: "line.3.horizontal")
                        .font(.title)
                        .bold()
                }
                
                HStack{
                    Image(systemName: "thermometer.medium")
                        .font(.title)
                    Text("47°")
                        .font(.title)
                    Spacer()
                }
                HStack{
                    Text("Growing")
                    Spacer()
                }
                Image("P1")
                    .resizable()
                    .frame(width: 150, height: 300)
                Spacer()
            }
            ScrollView(showsIndicators: false){
                HStack{
                    Image(systemName: "lock.fill")
                        .font(.title)
                    Spacer()
                    Image(systemName: "fan.fill")
                        .font(.title)
                    Spacer()
                    Image(systemName: "bolt.fill")
                        .font(.title)
                    Spacer()
                    Image(systemName: "leaf.fill")
                        .font(.title)
                }
                .padding()
                .padding(.top, 450)
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "fan.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                HStack{
                    Image(systemName: "refrigerator.fill")
                        .font(.title)
                        .frame(width: 30)
                    Text("Testing")
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
            }
        }
        .padding()
        .padding(.top, 40)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
