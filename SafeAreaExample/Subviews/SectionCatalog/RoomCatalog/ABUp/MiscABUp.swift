//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct MiscABUp: View {
    @State private var misc = 1
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .colorInvert()
                    Image("Misc\(misc)")
                        .resizable()
                        .scaledToFit()
                    Divider()
                    Picker("Room", selection: $misc) {
                        Label(" Gymnasium", systemImage: "figure.volleyball").tag(7)
                        Label(" SLC", systemImage: "sofa.fill").tag(8)
                        Label(" Outdoor Courtyard", systemImage: "figure.basketball").tag(9)
                        Label(" OE Kitchen", systemImage: "stove.fill").tag(10)
                        Label(" Lower Hadden", systemImage: "person.2.circle.fill").tag(11)
                        Label(" Bryan Jones Theatre (Backstage)", systemImage: "theatermasks.fill").tag(12)
                    }
                    Divider()
                    Image("MiscMap\(misc)")
                        .resizable()
                        .scaledToFit()
                }
                .pickerStyle(.menu)
                .accentColor(.white)

            }
        }
    }
}

#Preview {
    MiscABUp()
}
