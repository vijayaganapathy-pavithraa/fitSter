//
//  Home2View.swift
//  innoscience
//
//  Created by Vijayaganapathy Pavithraa on 10/9/24.
//

import SwiftUI

struct Home2View: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("Jimmy")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .mask(Circle())
                Text("Hi, I am Jimmy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(20)
                Text("As captain of Fitster, I’ll train ye to take the helm. Brave treacherous terrains and claim yer rewards!")
                    .multilineTextAlignment(.center)
                    .padding(15)
                
                Text("Are you ready to start your quest, ye scallywag?")
                    .multilineTextAlignment(.center)
                NavigationLink {
                    AIView()
                } label: {
                    Text("Start my quest")
                }
                .buttonStyle(.borderedProminent)
                .padding(20)
            }
            .padding()
            
        }
    }
}


#Preview {
    Home2View()
}
