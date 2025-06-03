//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Houses: View {
    var body: some View {
        NavigationStack(){
            VStack{
                NavigationLink {
                    ABLow()
                } label: {
                    Label("Academic Buildings - Lower Level - Room 1-13, Gym, Outdoor Courtyard, Lower Hadden Hall", systemImage: "mappin.and.ellipse.circle")
                        .frame(width: 350)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
                NavigationLink {
                    Houses()
                } label: {
                    Label("Academic Buildings - Upper Level - Room 20-37, Bryan Jones Theatre, Learning Commons/Library, Upper Hadden Hall", systemImage: "mappin.and.ellipse.circle")
                        .frame(width: 350)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
            }
        }
    }
}

#Preview {
    Houses()
}
