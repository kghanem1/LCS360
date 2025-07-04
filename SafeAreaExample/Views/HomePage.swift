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
                        ScrollView{
                            VStack {
                                
                                Image("LCS-logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150)
                                
                                NavigationLink {
                                    MasterCatalog()
                                } label: {
                                    Label("Where to?", systemImage: "signpost.right.fill")
                                        .frame(width: 200)
                                    
                                }
                                .buttonStyle(.borderedProminent)
                                .tint(.lcsGreen)
                                NavigationLink {
                                    RawMap()
                                } label: {
                                    Label("Maps", systemImage: "map.fill")
                                        .frame(width: 200)
                                    
                                }
                                .buttonStyle(.borderedProminent)
                                .tint(.lcsGreen)
                                NavigationLink {
                                    About()
                                } label: {
                                    Label("About", systemImage: "info.circle")
                                        .frame(width: 200)
                                    
                                }
                                .buttonStyle(.borderedProminent)
                                .tint(.lcsGreen)
                            }
                            

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
