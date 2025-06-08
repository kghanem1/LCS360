//
//  About.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-06.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack(){
            ZStack {
                // Background
                Image("CompSci")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                // Foreground
                LinearGradient(colors: [.clear, .lcsGreenTint], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .overlay(alignment: .center) {
                    }
                    .padding(.top, 300)
            }
                Label("About", systemImage: "info.circle")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            Spacer()
            Text("LCS360 is an app developed by a computer science student, Khalid Ghanem '27. LCS360 aims to assist people to get around the school, and it's numerous classrooms and areas.").foregroundStyle(.white).font(.title3)
                Divider()
                .background(.white)
                .frame(height: 2)
            Label("Note from developer", systemImage: "message.badge.filled.fill.rtl")
                .font(.title2)
                .foregroundStyle(.white)
            Spacer()
            Text("\"Thank you so much for using my app! I had so much fun creating this for my digital technology course. If you have any suggestions or want to add more features, please let me know!\"").foregroundStyle(.white).font(.title3).italic()
            }
        .safeAreaPadding()
        .background(Color.lcsGreenTint)
        }
    }
#Preview {
    About()
}
