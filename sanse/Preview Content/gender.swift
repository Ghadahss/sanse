//
//  gender.swift
//  sanse
//
//  Created by zainab saad alsayed on 21/05/1444 AH.
//

import SwiftUI

struct gender: View {
    @State var isPressed = false
    @State var isPressed2 = false
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
                Text("Are you ......")
                    .padding(.top,60)
                    .offset(x:-40)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                
                
                VStack{
                    Button{
                        isPressed = true
                    } label: {
                        Image("heyf")
                            .resizable()
                            .scaledToFit()
                           
                            .frame(width: 310,height: 260)
                            .cornerRadius(1)
                    }
                    Text("Fmale")
                }.fullScreenCover(isPresented: $isPressed,content: home.init)
                
                
                VStack{
                    Button{
                        isPressed2 = true
                    } label: {
                        Image("heym")
                            .resizable()
                        
                            .frame(width: 310,height: 260)
                            .cornerRadius(1)
                    }
                    Text("Male")
                }.fullScreenCover(isPresented: $isPressed2,content: home2.init)
                
                
            }
            
        }
    }
    
    struct gender_Previews: PreviewProvider {
        static var previews: some View {
            gender()
        }
    }
}
