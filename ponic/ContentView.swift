//
//  ContentView.swift
//  ponic
//
//  Created by Wheezy Capowdis on 7/3/24.
//

import SwiftUI

let deviceHeight = UIScreen.main.bounds.height
let deviceWidth = UIScreen.main.bounds.width

struct ContentView: View {
    @State private var yAxis: CGFloat = 0.0
    @State private var headeOpacity: CGFloat = 1.0
    @State private var p1Opacity: CGFloat = 1.0
    var body: some View {
        ZStack{
            Color.primary
                .ignoresSafeArea()
                .opacity(0.1)
            ZStack{
                VStack {
                    Group {
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
                    }
                    .opacity(headeOpacity)
                    Image("P1")
                        .resizable()
                        .frame(width: 150, height: 300)
                        .opacity(p1Opacity)
                    Spacer()
                }
                GeometryReader { geometry in
                    ScrollView(showsIndicators: false){
                        VStack {
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
                            .background(GeometryReader {
                                Color.clear.preference(key: ScrollViewOffsetKey.self,
                                    value: -$0.frame(in: .named("scrollView")).origin.y)
                            })
                            HStack{
                                Image(systemName: "refrigerator")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Controls")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "fan")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Climate")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "laurel.leading")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Grow State")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "water.waves")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Water")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "alarm")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Schedule")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "checkmark.shield")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Safety")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "chart.bar")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Grow Stats")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "bag")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Shop")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "wrench.and.screwdriver")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Service")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                            HStack{
                                Image(systemName: "exclamationmark.triangle")
                                    .font(.title)
                                    .frame(width: 30)
                                Text("Alerts")
                                    .bold()
                                    .padding(.horizontal)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .padding()
                        }
                    }
                    .coordinateSpace(name: "scrollView")
                    .onPreferenceChange(ScrollViewOffsetKey.self) { value in
                        headeOpacity = (460 - value) / 100
                        if value > 1 {
                            p1Opacity = (30 / value)
                        } else {
                            p1Opacity = 1
                        }
                    }
                }
            }
            .padding()
            .padding(.top, 40)
            .ignoresSafeArea()
        }
    }
}

struct ScrollViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0.0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    ContentView()
}
