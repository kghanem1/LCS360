//
//  RawMap.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-05.
//

import SwiftUI

struct RawMap: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    Image(systemName: "map.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundStyle(.white)
                    Text("All Maps")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                }
                .frame(width: 350, height: 30)
                Divider()
                    .background(.white)
                    .frame(height: 2)
                Label("Full map with trails", systemImage: "figure.skiing.crosscountry")
                    .foregroundStyle(.white)
                    .font(.headline)
                Image("FullMapWithTrails")
                    .resizable()
                    .scaledToFit()
                NavigationLink{
                    
                }
            }
        }
        .background(Color.lcsGreenTint)
    }
}

#Preview {
    RawMap()
}
