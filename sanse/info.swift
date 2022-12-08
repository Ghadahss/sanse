//
//  info.swift
//  sanse
//
//  Created by Ghadah on 14/05/1444 AH.
//

import SwiftUI

struct info: View {
    @Environment(\.dismiss) var dismiss
    
    @State var gradient: [Color] = [Color("backgroundColor2").opacity(0), Color("backgroundColor2"), Color("backgroundColor2"), Color("backgroundColor2")]
    
    @State var selectedDate: Bool = false
    @State var selectedHour: Bool = false
    @State var bindingSelection: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView([.vertical], showsIndicators: true){
                    Image("thor-top")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400)
                        .cornerRadius(40)
                    
                    
                    
                    VStack {
                    }
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    
                    VStack(spacing: 0.0) {
                        HStack {
                            Button{
                                dismiss()
                            }label: {
                                
                                Image("arrow.left")}
                            
                            
                            Spacer()
                            
                            
                            
                        }
                        .padding(EdgeInsets(top: 46, leading: 20, bottom: 0, trailing: 20))
                        VStack{
                            Text("All This Time")
                                .font(.title3)
                                .fontWeight(.bold)
                            
                            
                                .offset(x:-100)
                            
                            
                            
                            Text("Dr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions ofDr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions ofDr. Stephen Strange casts a forbidden spell that opens the doorway to the multiverse, including alternate versions of ... ")
                                .font(.subheadline)
                            
                                .padding(30)
                            
                            Text("Read on ...")
                                .font(.title3)
                                .fontWeight(.semibold)
                            
                                .offset(x:-110)
                            
                            
                        }
                        
                        
                    }.padding(.bottom, 50)
                        .frame(maxHeight: .infinity, alignment: .top)
                }
                .background(Color("backgroundColor2"))
                .ignoresSafeArea()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    struct info_Previews: PreviewProvider {
        static var previews: some View {
            info()
        }
    }
}
