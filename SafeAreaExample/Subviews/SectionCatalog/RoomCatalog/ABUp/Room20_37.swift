//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Room20_37: View {
    @State private var room = 20
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("What room?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    Image("Rm \(room)")
                        .resizable()
                        .scaledToFit()
                    Label("Use fingers to look around! (Room \(room))", systemImage: "hand.point.up.left.fill")
                        .font(.footnote)
                        .opacity(0.6)
                        .foregroundStyle(.white)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                        .foregroundStyle(.white)
                    Picker("Room", selection: $room) {
                        ForEach((20...37).filter { !(24...27).contains($0) }, id: \.self) {
                            Text("Room \($0)")
                                .foregroundStyle(.white)
                        }
                    }
                    .pickerStyle(.wheel)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                        .foregroundStyle(.white)
                    Image("Rm\(room)Map")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

#Preview {
    Room20_37()
}
