//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct SchoolBlock: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.lcsGreenTint
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    ZStack(alignment: .top) {
                        Image("LCSBlock")
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                        LinearGradient(colors: [.clear, .black], startPoint: .center, endPoint: .top)
                            .ignoresSafeArea()
                        Text("Academic Buildings")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.top, 40)
                    }
                    NavigationLink {
                        ABLow()
                    } label: {
                        Label("Academic Buildings - Lower Level - Room 1-13, Gym, Outdoor Courtyard, Lower Hadden Hall, SLC, OE Kitchen", systemImage: "mappin.and.ellipse.circle")
                            .frame(width: 350)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    
                    NavigationLink {
                        ABUp()
                    } label: {
                        Label("Academic Buildings - Upper Level - Room 20-37, Bryan Jones Theatre, Learning Commons/Library, Upper Hadden Hall", systemImage: "mappin.and.ellipse.circle")
                            .frame(width: 350)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}



#Preview {
    SchoolBlock()
}
