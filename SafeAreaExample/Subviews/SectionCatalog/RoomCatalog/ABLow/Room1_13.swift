//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Room1_13: View {
    @State private var room = 1
    var body: some View {
            NavigationStack{
                ZStack{
                    Color.lcsGreenTint
                        .ignoresSafeArea()
                VStack{
                    Text("What room?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    PhotoSphereView(fileName: "PS\(room)")
                        .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay(RoundedRectangle(cornerRadius: 12)            .stroke(Color.white, lineWidth: 2).opacity(0.6))
                    Label("Use fingers to look around! (Room \(room))", systemImage: "hand.point.up.left.fill")
                        .font(.footnote)
                        .opacity(0.6)
                        .foregroundStyle(.white)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                        .foregroundStyle(.white)
                    Picker("Room", selection: $room) {
                        ForEach(1...13, id: \.self) {
                            Text("Room \($0)")
                                .foregroundStyle(.white)
                        }
                    }
                    .foregroundStyle(.white)
                    .pickerStyle(.wheel)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                    Image("Rm\(room)Map")
                        .resizable()
                        .scaledToFit()
                }
            }
        }
    }
}

#Preview {
    Room1_13()
}
