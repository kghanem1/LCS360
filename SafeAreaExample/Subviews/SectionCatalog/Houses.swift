//
//  School Block.swift
//  SafeAreaExample
//
//  Created by Khalid Ghanem on 2025-06-02.
//

import SwiftUI

struct Houses: View {
    @State private var misc = 10
    
    struct House {
        let name: String
        let tag: Int
        let mapURL: String
    }
    
    let houses = [
           House(name: "Cooper", tag: 10, mapURL: "https://maps.app.goo.gl/pz6nnDuj4Pua41PM9"),
           House(name: "Colebrook", tag: 11, mapURL: "https://maps.app.goo.gl/q2GA9joK5XUiLRHT8"),
           House(name: "Matthews", tag: 12, mapURL: "https://maps.app.goo.gl/1e1d7Z1672MRYhLBA"),
           House(name: "Memorial", tag: 13, mapURL: "https://maps.app.goo.gl/pVxK1hnC3sC1mK9UA"),
           House(name: "Moodie", tag: 14, mapURL: "https://maps.app.goo.gl/t3K4gLfoeyuoYJFb9"),
           House(name: "Ondaatje", tag: 15, mapURL: "https://maps.app.goo.gl/U9fG5xdfrPeRwhCL6"),
           House(name: "Parent", tag: 16, mapURL: "https://maps.app.goo.gl/n9Z6KZsRHKz3K2bR8"),
           House(name: "Rashleigh", tag: 17, mapURL: "https://maps.app.goo.gl/7Sgwef1TfLBjbWgE6"),
           House(name: "Ryder", tag: 18, mapURL: "https://maps.app.goo.gl/M6TRg18hPo67GSeZ6"),
           House(name: "Ross", tag: 19, mapURL: "https://maps.app.goo.gl/n9Z6KZsRHKz3K2bR8"),
           House(name: "Uplands", tag: 20, mapURL: "https://maps.app.goo.gl/z2Dj5Aoa5wyuxS1b8")
       ]
    
    //lists a house, it's name, it's tag, and a link corresponding to it on gmaps
    
    var selectedHouse: House? {
        houses.first(where: { $0.tag == misc })
    }
    //checks the first piece of data from above's tag interger matches that of misc from the picker
    
    //AI taught me how to do the stuff above, I wrote it, however, I understand how it works and can easily explain it.
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.lcsGreenTint
                    .ignoresSafeArea()
                VStack{
                    Text("Where to?")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    PhotoSphereView(fileName: "House\(misc)")
                        .edgesIgnoringSafeArea(.all)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .overlay(RoundedRectangle(cornerRadius: 12)            .stroke(Color.white, lineWidth: 2).opacity(0.6))
                    Label("Use fingers to look around!", systemImage: "hand.point.up.left.fill")
                        .font(.footnote)
                        .opacity(0.6)
                        .foregroundStyle(.white)
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                    HStack{
                        Picker("Room", selection: $misc) {
                            Label(" Cooper", systemImage: "house.fill").tag(10)
                            Label(" Colebrook", systemImage: "house.fill").tag(11)
                            Label(" Matthews", systemImage: "house.fill").tag(12)
                            Label(" Memorial", systemImage: "house.fill").tag(13)
                            Label(" Moodie", systemImage: "house.fill").tag(14)
                            Label(" Ondaatje", systemImage: "house.fill").tag(15)
                            Label(" Parent", systemImage: "house.fill").tag(16)
                            Label(" Rashleigh", systemImage: "house.fill").tag(17)
                            Label(" Ryder", systemImage: "house.fill").tag(18)
                            Label(" Ross", systemImage: "house.fill").tag(19)
                            Label(" Uplands", systemImage: "house.fill").tag(20)
                            
                        }
                        Spacer().frame(width: 60)
                        if let url = selectedHouse.flatMap({ URL(string: $0.mapURL) }) {
                            Link(destination: url) {
                                Label("Go", systemImage: "arrow.up.right.square")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    Divider()
                        .background(Color.white)
                        .frame(height: 1)
                    Image("HouseMap\(misc)")
                        .resizable()
                        .scaledToFit()
                }
                .pickerStyle(.menu)
                .accentColor(.white)

            }
        }
    }
}

#Preview {
    Houses()
}
