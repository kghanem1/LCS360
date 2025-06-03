//
//  SwiftUIView.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-03.
//

import SwiftUI

struct TESTPhoto: View {
    var body: some View {
        PhotoSphereView()
            .edgesIgnoringSafeArea(.all)
    }
}


#Preview {
    TESTPhoto()
}
