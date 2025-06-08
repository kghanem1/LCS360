//
//
//  TrailMap.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-05.
//

import SwiftUI

struct ABLowMap: View {
    var body: some View {
        VStack{
            Image("ABLow")
                .resizable()
                .rotationEffect(.degrees(90))
                .scaledToFit()
                .frame(width: 630, height: 900)
        }
        .background(Color.lcsGreenTint)
    }

}

#Preview {
    ABLowMap()
}
