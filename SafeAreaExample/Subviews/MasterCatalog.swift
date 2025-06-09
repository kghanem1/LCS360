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
                        .foregroundStyle(.white)
                    NavigationLink {
                        SchoolBlock()
                    } label: {
                        
                        VStack{
                            Text("\(Image(systemName: "building.columns.fill")) School Block")
                            Text("Room 1-37, Gym, Library, Hadden Hall, Theatre").font(.caption)
                        }
                        .frame(width: 250)

                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    
                    NavigationLink {
                        Houses()
                    } label: {
                        VStack{
                            Text("\(Image(systemName: "house.fill")) Houses")
                            Text("Cooper, Colebrook, Matthews, Ondaatje, Uplands, Ross, Parent, Ryder, Rashleigh, Memorial, Moodie").font(.caption)
                        }
                        .frame(width: 250)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.lcsGreen)
                    
                    NavigationLink {
                        Other()
                    } label: {
                        
                        VStack {
                            Text("\(Image(systemName: "mappin.circle.fill")) Other")
                            Text("Chapel, Waterfront, Health Centre, etc. ")
                                .font(.caption)
                        }
                        .frame(width: 250)
                        
                        
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
