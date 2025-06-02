//
//  Room1-13.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Room1_13: View {
    var body: some View {
        NavigationStack{
            ZStack{
                List{
                    NavigationLink {
                        Room1()
                    } label: {
                        Label("Room 1", systemImage: "door.left.hand.closed")
                    }
                    NavigationLink {
                        Room2()
                    } label: {
                        Label("Room 2", systemImage: "door.left.hand.closed")
                    }
                    NavigationLink {
                        Room3()
                    } label: {
                        Label("Room 3", systemImage: "door.left.hand.closed")
                    }
                    NavigationLink {
                        Room1()
                    } label: {
                        Label("Room 1", systemImage: "door.left.hand.closed")
                    }
                    NavigationLink {
                        Room1()
                    } label: {
                        Label("Room 1", systemImage: "door.left.hand.closed")
                    }
                    NavigationLink {
                        Room1()
                    } label: {
                        Label("Room 1", systemImage: "door.left.hand.closed")
                    }
                }
            }
        }
    }
}

#Preview {
    Room1_13()
}
