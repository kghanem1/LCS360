//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Room20_37: View {
    @State private var room = 1
    var body: some View {
        NavigationStack{
            VStack{
                Text("What room?")
                    .font(.largeTitle)
                Image("Rm \(room)")
                    .resizable()
                    .scaledToFit()
                Text("Room \(room)")
                    .font(.footnote)
                    .opacity(0.6)
                Divider()
                Picker("Room", selection: $room) {
                    ForEach(20...37, id: \.self) {
                        Text("Room \($0)")
                    }
                }
                .pickerStyle(.wheel)
                Divider()
                Image("Rm\(room)Map")
                    .resizable()
                    .scaledToFit()
            }
        }    }
}

#Preview {
    Room20_37()
}
