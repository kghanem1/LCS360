//
//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Other: View {
    @State private var misc = 1
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Image("Misc\(misc)")
                        .resizable()
                        .scaledToFit()
                    Picker("Room", selection: $misc) {
                        Label(" Gymnasium", systemImage: "figure.volleyball").tag(1)
                        Label(" Learning Commons/Library", systemImage: "sofa.fill").tag(2)
                        Label(" Upper Hadden Hall", systemImage: "figure.basketball").tag(3)
                        Label(" OE Kitchen", systemImage: "stove.fill").tag(4)
                        Label(" Lower Hadden", systemImage: "person.2.circle.fill").tag(5)
                        Label(" Bryan Jones Theatre (Backstage)", systemImage: "theatermasks.fill").tag(6)
                    }
                    .pickerStyle(.menu)
                    .accentColor(.white)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                    Image("MiscMap\(misc)")
                        .resizable()
                        .scaledToFit()
                }

            }
        }
    }
}

#Preview {
    Other()
}
