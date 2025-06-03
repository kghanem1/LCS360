//
//  ContentView.swift
//  SafeAreaExample
//
//  Created by Russell Gordon on 2025-05-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {

                // Background
                Image("LCS")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                // Foreground
                LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                    .overlay(alignment: .center) {
                        VStack {
                            
                            Image("LCS-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                            
                            NavigationLink {
                                MasterCatalog()
                            } label: {
                                Label("Map", systemImage: "map")
                                    .frame(width: 200)

                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.lcsGreen)

                            

                            Spacer()
                            
                        }
                    }
                    .padding(.top, 300)


                
            }

        }
        
    }
}

#Preview {
    ContentView()
}
