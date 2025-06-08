//
//
//  TrailMap.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-05.
//

import SwiftUI

struct ABUpMap: View {
    var body: some View {
        VStack{
            Image("ABUp")
                .resizable()
                .rotationEffect(.degrees(90))
                .scaledToFit()
                .frame(width: 600, height: 900)
        }
        .background(Color.lcsGreenTint)
        .ignoresSafeArea()
    }
}

#Preview {
    ABUpMap()
}
