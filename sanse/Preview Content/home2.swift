//
//  home2.swift
//  sanse
//
//  Created by zainab saad alsayed on 21/05/1444 AH.
//

import SwiftUI

struct home2: View {
    
    @State private var isPressed = false
    @State private var isPressed2 = false
    @State private var isPressed3 = false
    @State private var isPressed4 = false
    @State private var isPressed5 = false
    
    @State var animate: Bool = false
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.colorScheme) var colorScheme2
    //@State var isPressed = false
    
    
    var body: some View {
        NavigationView{
            
            ZStack{
                CircleBackground(color: Color("purple"))
                    .blur(radius: animate ? 50 : 100)
                    .offset(x: animate ? -50 : 100, y: animate ?  -50 : 400)
                    .opacity(0.5)
                    .task {
                        withAnimation(.easeInOut(duration: 20).repeatForever()) {
                            animate.toggle()
                        }
                    }
                
                CircleBackground(color: Color.white)
                    .blur(radius: animate ? 30 : 100)
                    .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
                    .opacity(0.2)
                    .task {
                        withAnimation(.easeInOut(duration: 4).repeatForever()) {
                            animate.toggle()
                        }
                    }
                CircleBackground(color: Color("pinkCircle"))
                    .blur(radius: animate ? 50 : 100)
                    .offset(x: animate ? -50 : 200, y: animate ? 350 : 300)
                    .opacity(0.5)
                    .task {
                        withAnimation(.easeInOut(duration: 10).repeatForever()) {
                            animate.toggle()
                        }
                    }
                VStack{
                    
                    Text("Today I feel ...")
                        .bold()
                        .offset(x:-100)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    Text("Chose your feeling")
                        .offset(x:-100)
                    
                    
                    HStack {
                        VStack{
                            Button{
                                isPressed = true
                            } label: {
                                Image("enjoyment2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150,height: 150)
                                    .cornerRadius(10)
                            }
                            Text("Enjoyment")
                        }
                        
                        
                        VStack{
                            Button{
                                isPressed2 = true
                            } label: {
                                Image("sadness2")
                                    .resizable()
                                    .frame(width: 180,height: 160)
                                    .cornerRadius(10)
                            }
                            Text("Sadneees")
                        }
                    }
                    
                    
                    
                    HStack {
                        VStack{
                            Button{
                                isPressed4 = true
                            } label: {
                                Image("anger2")
                                    .resizable()
                                    .frame(width: 180,height: 160)
                                    .cornerRadius(10)
                            }
                            Text("Anger")
                        }
                        
                        VStack{
                            Button{
                                isPressed5 = true
                            } label: {
                                Image("disgust2")
                                    .resizable()
                                    .frame(width: 180,height: 170)
                                    .cornerRadius(10)
                            }
                            Text("Disgust")
                        }
                    }
                    
                    
                    HStack {
                        VStack{
                            Button{
                                isPressed3 = true
                            } label: {
                                Image("fear2")
                                    .resizable()
                                    .frame(width: 170,height: 150)
                                    .cornerRadius(10)
                            }
                            Text("Fear")
                        }
                    }
                    
                }
                
                    }
                    
                    
                }
                
                
            }
        }
    
    
        
        struct home2_Previews: PreviewProvider {
            static var previews: some View {
                home2()
            }
        }
    
    
