//
//  ScrollSection.swift
//  sanse
//
//  Created by Ghadah on 14/05/1444 AH.
//

import SwiftUI

struct ScrollSection: View {
    
    @State var title: String = "Now Playing"
    @State private var showingSheet = false
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
        
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 20.0) {
                    ForEach(posters.indices, id: \.self) { index in
                        NavigationLink {
                            Tickets()
                        } label: {
                            Button{ showingSheet.toggle()}label: {
                                
                                
                                Image(posters[index])
                                    .resizable()
                                    .frame(width: 100, height: 130)
                                    .cornerRadius(13)
                            }.sheet(isPresented: $showingSheet) {
                                info()  }
                            
                        }
                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}
