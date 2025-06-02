//
//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Houses: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("ABLow")
                    .resizable()
                    .scaledToFit()
                NavigationLink {
                    SchoolBlock()
                } label: {
                    Label("School Block", systemImage: "building.columns.fill")
                        .frame(width: 200)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
                
                NavigationLink {
                    Houses()
                } label: {
                    Label("Houses", systemImage: "house.fill")
                        .frame(width: 200)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
                
                NavigationLink {
                    Other()
                } label: {
                    Label("Other", systemImage: "mappin.circle.fill")
                        .frame(width: 200)

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
