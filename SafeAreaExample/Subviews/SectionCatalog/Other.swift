//
//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Other: View {
    @State private var other = 1
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Image("Other\(other)")
                        .resizable()
                        .scaledToFit()
                    Picker("Room", selection: $other) {
                        Label(" Waterfront", systemImage: "sailboat.fill").tag(1)
                        Label(" Dining Hall", systemImage: "fork.knife").tag(2)
                        Label(" Chapel", systemImage: "building.columns.fill").tag(3)
                        Label("OE Outpost/Sugar Shack", systemImage: "leaf.fill").tag(4)
                        Label(" Health Centre", systemImage: "bandage.fill").tag(5)
                        Label(" School Stores", systemImage: "storefront.fill").tag(12)
                        Label(" Guild Hut", systemImage: "tent.2.fill").tag(8)
                        Label(" Lefevre Field", systemImage: "figure.outdoor.soccer").tag(7)
                        Label(" Tennis Courts", systemImage: "figure.tennis").tag(6)
                        Label(" Matthews Field", systemImage: "figure.rugby").tag(9)
                        Label(" Harris Track & Field", systemImage: "figure.track.and.field").tag(10)
                        Label(" Armstrong Rink", systemImage: "figure.ice.hockey").tag(11)
                        
                    }
                    .pickerStyle(.menu)
                    .accentColor(.white)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                    Image("OtherMap\(other)")
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
