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
                        VStack{
                            Text("\(Image(systemName: "door.left.hand.closed")) Rooms")
                            Text("(20-37)").font(.caption)
                        }
                        .frame(width: 350)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    NavigationLink {
                        MiscABUp()
                    } label: {
                        VStack{
                            Text("\(Image(systemName: "person.circle.fill")) Other")
                            Text("Library, Bryan Jones Theatre, Upper Hadden, and more").font(.caption)
                            
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
    ABUp()
}
