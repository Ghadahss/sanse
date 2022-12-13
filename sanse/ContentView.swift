//
//  ContentView.swift
//  sanse
//
//  Created by Ghadah on 12/05/1444 AH.
//

import SwiftUI

struct ContentView: View { @State var animate: Bool = false
    
    @State var posters1: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]

    @State var posters2: [String] = ["poster7", "poster8", "poster9", "poster10", "poster11", "poster12"]

    @State var posters3: [String] = ["poster13", "poster14", "poster15", "poster16", "poster17", "poster18"]
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.colorScheme) var colorScheme2
    @State var isPressed = false
    var body: some View {
        ZStack {
           
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
            
            VStack(spacing: 0.0) {
                Text("Change your mode with")
                    .padding(.top,60)
                    .padding(.bottom,20)
                    .offset(x:-40)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                 
                   
                
//                CustomSearchBar()
//                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20.0) {
                        HStack{
                            Text("Books")
                                .padding(.bottom,-40)
                                .padding(.top,20)
                                .offset(x:15)
                            .font(.system(size: 20))
                            
                            Spacer()
                            Button{isPressed=true}label: {
                                Text("more ..")
                                    .padding(.bottom,-40)
                                    .padding(.top,20)
                                    .offset(x:-8)
                                .font(.system(size: 15))
                                .foregroundColor(colorScheme2 == .dark ? Color("pinkCircle") : Color("purple"))
                            }.fullScreenCover(isPresented: $isPressed, content: Cards.init)
                           
                            
                        }
                        ScrollSection(title:"" , posters: posters1)
                        HStack{
                            Text("Movies")
                                .padding(.bottom,-40)
                                .padding(.top,20)
                                .offset(x:15)
                            .font(.system(size: 20))
                            
                            Spacer()
                            Text("more ..")
                                .padding(.bottom,-40)
                                .padding(.top,20)
                                .offset(x:-8)
                            .font(.system(size: 15))
                            .foregroundColor(Color("purple"))
                            
                        }
                        ScrollSection(title:"", posters: posters2)
                        HStack{
                            Text("Places")
                                .padding(.bottom,-40)
                                .padding(.top,20)
                                .offset(x:15)
                            .font(.system(size: 20))
                            
                            Spacer()
                            Text("more ..")
                                .padding(.bottom,-40)
                                .padding(.top,20)
                                .offset(x:-8)
                            .font(.system(size: 15))
                            .foregroundColor(Color("purple"))
                            
                        }
                        
                        ScrollSection(title:"", posters: posters3)
                        
                     
                    }
                    .padding(.bottom, 90)
                    
                }
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(colorScheme == .dark ? Color("backgroundColor2") : Color("backgroundColor2"))
//        .background(
//            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
//        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
