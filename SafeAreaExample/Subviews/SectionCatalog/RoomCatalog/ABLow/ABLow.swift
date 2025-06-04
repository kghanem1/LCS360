//
//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct ABLow: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Image("ABLow")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        Room1_13()
                    } label: {
                        VStack{
                            Text("\(Image(systemName: "door.left.hand.closed")) Rooms")
                            Text("(1-13)").font(.caption)
                        }
                        .frame(width: 350)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    NavigationLink {
                        MiscABLow()
                    } label: {
                        VStack{
                            Text("\(Image(systemName: "person.circle.fill")) Other")
                            Text("Gym, SLC, OE Kitchen, and more").font(.caption)
                            
                        }
                        .frame(width: 350)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                }
            }
        }
    }
}

#Preview {
    ABLow()
}
