//
//  RewardsView.swift
//  innoscience
//
//  Created by Vijayaganapathy Pavithraa on 13/9/24.
//

import SwiftUI

struct RewardsView: View {
    
    @State var noOfVouchers = 0
    @State var points = 10
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Image("Jimmy")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .mask(
                            Circle()
                        )
                    Text("After a grueling voyage, ye’ve earned these fine rewards, matey!")
                        .fontWeight(.bold)
                }
                .padding()
                HStack{
                    Image(systemName: "heart.circle.fill")
                        .font(.custom("SFPro",fixedSize: 25))
                        .foregroundColor(.lightBlueTxt)

                    Text("\(points)")
                        .font(.custom("SFPro",fixedSize: 25))
                    Spacer()
                    Text("Ye've claimed \(noOfVouchers) treasures!")
                }
                .padding()
                List{
                    Section{
                        HStack{
                            Text("Fair price Voucher")
                                .font(.title3)
                                .padding()
                            Spacer()
                            Button("Get"){
                                noOfVouchers += 1
                                points -= 1
                            }
                            .buttonStyle(.bordered)
                            .tint(.lightBlueTxt)
                        }
                    }
                    
                    Section{
                        HStack{
                            Text("Toruism Discount")
                                .font(.title3)
                                .padding()
                            Spacer()
                            Button("Get"){
                                noOfVouchers += 1
                                points -= 1
                            }
                            .buttonStyle(.bordered)
                            .tint(.lightBlueTxt)
                        }
                    }
                    Section{
                        HStack{
                            Text("Popular Voucher")
                                .font(.title3)
                                .padding()
                            Spacer()
                            Button("Get"){
                                noOfVouchers += 1
                                points -= 1
                            }
                            .buttonStyle(.bordered)
                            .tint(.lightBlueTxt)
                        }
                    }
                }
                .frame(maxHeight: 390)
            }
            .navigationTitle("Rewards")
        }
    }
}

#Preview {
    RewardsView()
}
