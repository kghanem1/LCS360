//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct MiscABUp: View {
    @State private var misc = 7
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
                        Label(" Bryan Jones Theatre", systemImage: "theatermasks.fill").tag(7)
                        Label(" Learning Commons/Library", systemImage: "book.fill").tag(8)
                        Label(" Upper Hadden Hall", systemImage: "person.2.circle.fill").tag(9)
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
