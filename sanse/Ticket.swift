//
//  Ticket.swift
//  sanse
//
//  Created by Ghadah on 13/05/1444 AH.
//

import SwiftUI

struct Ticket: View {    @State var title: String = "Thor"
    @State var subtitle: String = "Love and Thunder"
    @State var top: String = "thor-top"
    @State var bottom: String = "thor-bottom"
    @Binding var height: CGFloat
    var n = Int.random(in: 1...15)
    var gradient: [Color] = [Color("purple"), Color("purple").opacity(0), Color("purple").opacity(0)]
    @State private var showingSheet = false

    var body: some View {
        VStack(spacing: 0.0) {
            ZStack{
                
              
   
            }
            ZStack{ Button{ showingSheet.toggle()}label: {
                Text("Read more")
                        .foregroundColor(.white)
                        .frame(width: 250 ,height: 80)
                        .offset(y:-7)
                        
                    .background(  BackdropBlurView(radius: 9)
                        .frame(width: 350 , height: 100))}
                .offset(y:160)
            } .sheet(isPresented: $showingSheet) {
                info()  }         .frame(width: 250, height: 380)
          
            .background(
                
                Image(top)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            )
            
            .overlay {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(30)
        
            
//            Spacer(minLength: height)
            
       
                        
                     
                        
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}
struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket(height: .constant(0))
    }
}


struct BackdropView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView()
        let blur = UIBlurEffect(style: .extraLight)
        let animator = UIViewPropertyAnimator()
        animator.addAnimations { view.effect = blur }
        animator.fractionComplete = 0
        animator.stopAnimation(true)
        animator.finishAnimation(at: .start)
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) { }
    
}

/// A transparent View that blurs its background
struct BackdropBlurView: View {
    
    let radius: CGFloat
    
    @ViewBuilder
    var body: some View {
        BackdropView().blur(radius: radius)
    }
    
}
