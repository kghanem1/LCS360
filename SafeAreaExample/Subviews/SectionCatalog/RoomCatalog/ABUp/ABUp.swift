//
//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct ABUp: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Image("ABUp")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        Room20_37()
                    } label: {
                        Label("Rooms (20-37)", systemImage: "door.left.hand.closed")
                            .frame(width: 350)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    NavigationLink {
                        MiscABUp()
                    } label: {
                        Label("Other (Library, Bryan Jones Theatre, Upper Hadden, and more)", systemImage: "person.circle.fill")
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
    ABUp()
}
