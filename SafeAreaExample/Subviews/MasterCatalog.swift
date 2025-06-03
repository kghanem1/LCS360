//
//  MasterCatalog.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct MasterCatalog: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .colorInvert()
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
                        Label("Other - Chapel, Fields, Health Centre, etc. ", systemImage: "mappin.circle.fill")
                            .frame(width: 200)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                }
            }
        }
    }
}


#Preview {
    MasterCatalog()
}
