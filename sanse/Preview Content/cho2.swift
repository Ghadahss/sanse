//
//  cho2.swift
//  sanse
//
//  Created by zainab saad alsayed on 25/05/1444 AH.
//

import SwiftUI

struct cho2: View {
    @State var Showsheet: Bool = false
    @State var animate: Bool = false
    @Environment(\.colorScheme) var colorScheme
    @Environment(\.colorScheme) var colorScheme2

  
    var body: some View {
        
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
                Text("i want ......")
                    .padding(.top,60)
                
                    .offset(x:-40)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                Text("chose what you want")
                Button{ Showsheet.toggle()}label: {
                    VStack{
                        HStack{
                            Image("chatb2")
                                .resizable()
                                .frame(width: 180.0 , height: 180.0)
                                .scaledToFit()
                            Image("chatb")
                                .resizable()
                                .frame(width: 180 , height: 184)
                                .scaledToFit()
                        }
                        Text("talk to someone")}
                                    }
                
                .sheet(isPresented:  $Showsheet){
                    VStack{
                        HStack{
                            Image("chatb2")
                                .resizable()
                                .frame(width: 180 , height: 180)
                                .scaledToFit()
                            //     .frame(width: 200 , height: 180)
                            Image("chatb")
                                .resizable()
                                .frame(width: 180.0 , height: 184.0)
                                .scaledToFit()
                        }
                    }
                    
                    
                    Text("We are glad to have you with us! to use our featuers please log in")
                        .presentationDetents([.large, .medium, .fraction(0.80)])
                        .padding(.all, 10)
                    
                    HStack{
                        Button{}label: {Text("Register")
                                .font(.system(size: 20))
                                .frame(width: 150, height: 40)
                                .foregroundColor(Color.white)
                                .background(LinearGradient(gradient: Gradient(colors: [CustomColr.Button, CustomColr.GButton]), startPoint: .leading, endPoint: .trailing)).cornerRadius(50)
                        }
                        Button{}label: {Text("Cancel")
                                .font(.system(size: 20))
                                .frame(width: 150, height: 40)
                                .foregroundColor(Color.white)
                                .background(.gray).cornerRadius(50)
                        }
                    }.padding(.all, 5)
                }
                
                Button{}label: {
                    VStack{  Image("rec2")
                            .resizable()
                            .frame(width: 180.0 , height: 190.0)
                           
                                   Text("see recumondation")}
                }
            }
        }
    }


        
}
struct CustomColr {
static let Button = Color("Butoon")
static let GButton = Color("GButton")
                                                               
                                                                                                                                                                                                             }


struct cho2_Previews: PreviewProvider {
    static var previews: some View {
        cho2()
    }
}
