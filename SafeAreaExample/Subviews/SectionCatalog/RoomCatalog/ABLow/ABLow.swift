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
                        .colorInvert()
                    Image("ABLow")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        Room1_13()
                    } label: {
                        Label("Rooms (1-13)", systemImage: "door.left.hand.closed")
                            .frame(width: 350)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    NavigationLink {
                        MiscABLow()
                    } label: {
                        Label("Other (Gym, SLC, OE Kitchen, and more)", systemImage: "person.circle.fill")
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
