//
//  Cards.swift
//  sanse
//
//  Created by Ghadah on 14/05/1444 AH.
//

import SwiftUI

struct Cards: View {
    @State var ShowSheet : Bool=false
    @State var animate: Bool = false
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
                .task {
                    withAnimation(.easeInOut(duration: 4).repeatForever()) {
                        animate.toggle()
                    }
                }
            
           
        
                Tickets()
                .padding(.top, 30)
        } .background(colorScheme == .dark ? Color("backgroundColor2") : Color("backgroundColor2"))
//        .background(
//            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
//        )
    }
}

struct Cards_Previews: PreviewProvider {
    static var previews: some View {
        Cards()
    }
}
