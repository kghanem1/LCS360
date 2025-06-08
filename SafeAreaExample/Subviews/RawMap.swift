//
//  RawMap.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-05.
//

import SwiftUI

struct RawMap: View {
    var body: some View {
        NavigationStack{
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
                    NavigationLink {
                        TrailMap()
                    } label: {
                            Label("Trail map" , systemImage: "figure.skiing.crosscountry")
                            .frame(width: 350)
                    }
                    Divider()
                        .background(.white)
                        .frame(height: 2)
                    Label("Campus map", systemImage: "book.fill")
                        .foregroundStyle(.white)
                        .font(.headline)
                    Image("CampusMap")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        CampusMap()
                    } label: {
                            Label("Campus map" , systemImage: "book.fill")
                            .frame(width: 350)
                        
                    }
                    Divider()
                        .background(.white)
                        .frame(height: 2)
                    Label("School Block Upper level", systemImage: "books.vertical.fill")
                        .foregroundStyle(.white)
                        .font(.headline)
                    Image("ABUp")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        ABUpMap()
                    } label: {
                            Label("School Block Upper level" , systemImage: "books.vertical.fill")
                            .frame(width: 350)
                        
                    }
                    Divider()
                        .background(.white)
                        .frame(height: 2)
                    Label("School Block Lower level", systemImage: "books.vertical.fill")
                        .foregroundStyle(.white)
                        .font(.headline)
                    Image("ABLow")
                        .resizable()
                        .scaledToFit()
                    NavigationLink {
                        ABUpMap()
                    } label: {
                            Label("School Block Lower level" , systemImage: "books.vertical.fill")
                            .frame(width: 350)
                        
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.lcsGreen)
            .background(Color.lcsGreenTint)
        }
        .toolbarBackground(Color("LCSGreen"), for: .navigationBar)
    }
}

#Preview {
    RawMap()
}

