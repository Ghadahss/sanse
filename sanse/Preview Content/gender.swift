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

    var body: some View {
        
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
                    .frame(width: 230,height: 250)
                    .cornerRadius(10)
            }
            Text("FEMALE")
            }.fullScreenCover(isPresented: $isPressed,content: home.init)
            
            
            VStack{
            Button{
                isPressed2 = true
            } label: {
                Image("heym")
                    .resizable()
                    .frame(width: 310,height: 310)
                    .cornerRadius(10)
            }
            Text("MALE")
            }.fullScreenCover(isPresented: $isPressed2,content: home2.init)
            
                
            }
            
        }
    }
    
    struct gender_Previews: PreviewProvider {
        static var previews: some View {
            gender()
        }
    }

