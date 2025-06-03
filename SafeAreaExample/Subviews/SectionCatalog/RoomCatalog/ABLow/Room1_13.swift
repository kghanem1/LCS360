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
                        .colorInvert()
                    Image("Rm \(room)")
                        .resizable()
                        .scaledToFit()
                    Text("Room \(room)")
                        .font(.footnote)
                        .opacity(0.6)
                        .colorInvert()
                    Divider()
                    Picker("Room", selection: $room) {
                        ForEach(1...13, id: \.self) {
                            Text("Room \($0)")
                        }
                    }
                    .colorInvert()
                    .pickerStyle(.wheel)
                    Divider()
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
