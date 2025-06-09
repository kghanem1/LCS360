//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct MiscABLow: View {
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
                    PhotoSphereView(fileName: "MiscPS\(misc)")
                        .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay(RoundedRectangle(cornerRadius: 12)            .stroke(Color.white, lineWidth: 2).opacity(0.6))
                    Label("Use fingers to look around!", systemImage: "hand.point.up.left.fill")
                        .font(.footnote)
                        .opacity(0.6)
                        .foregroundStyle(.white)
                    Picker("Room", selection: $misc) {
                        Label(" Gymnasium", systemImage: "figure.volleyball").tag(1)
                        Label(" Learning Commons/Library", systemImage: "sofa.fill").tag(2)
                        Label(" Outdoor Courtyard", systemImage: "figure.basketball").tag(3)
                        Label(" OE Kitchen", systemImage: "stove.fill").tag(4)
                        Label(" Lower Hadden Hall", systemImage: "person.2.circle.fill").tag(5)
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
    MiscABLow()
}
