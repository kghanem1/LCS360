//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct SchoolBlock: View {
    var body: some View {
        NavigationStack(){
            ZStack{
                NavigationLink {
                    Houses()
                } label: {
                    Label("Academic Buildings - Lower Level -", systemImage: "mappin.and.ellipse.circle")
                        .frame(width: 200)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
                
                NavigationLink {
                    Houses()
                } label: {
                    Label("Academic Buildings - Lower Level", systemImage: "mappin.and.ellipse.circle")
                        .frame(width: 200)

                }
                .buttonStyle(.borderedProminent)
                .tint(.lcsGreen)
            }
        }
    }
}

#Preview {
    SchoolBlock()
}
