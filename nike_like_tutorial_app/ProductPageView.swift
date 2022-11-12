//
//  ProductPageView.swift
//  nike_like_tutorial_app
//
//  Created by Владимир Ушаков on 11.11.2022.
//

import SwiftUI

struct ProductPageView: View {
    @State private var currentIndex = 0
    
    private let images = ["1", "2", "3"]
    
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 10) {
                        ImageSlider(images: images)
                            .frame(width: geometry.size.width, height: geometry.size.width * 465 / 392)
                        HStack {
                            ZStack{
                                Color(red: 246/256, green: 246/256, blue: 246/256)
                                Image("02").resizable().scaledToFit()
                            }.frame(width: 160)
                            ZStack{
                                Color(red: 220/256, green: 220/256, blue: 220/256)
                                    .frame(width: 160)
                                Image("01").resizable().scaledToFit()
                            }
                        }.frame(height: 160)
                        
                        VStack {
                            ZStack() {
                                Capsule()
                                    .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 2)
                                    .frame(height: 60)
                                Text("Size 8  \(Image(systemName: "chevron.down"))").bold()
                            }.onTapGesture {
                                print("VStack tapped")
                            }
                            ZStack() {
                                Capsule().frame(height: 60)
                                Text("Add to bag").foregroundColor(.white).bold()
                            }.onTapGesture {
                                print("VStack tapped")
                            }
                            ZStack {
                                Capsule()
                                    .stroke(Color(red: 0.96, green: 0.96, blue: 0.96), lineWidth: 2)
                                    .frame(height: 60)
                                Text("\(Image(systemName: "heart"))  Favorite").bold()
                            }.onTapGesture {
                                print("VStack tapped")
                            }
                        }.padding(.horizontal, 65).padding(.top, 40)
                    }
                }
            }
            .navigationTitle("Nike Air Force 1 '07")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("\(Image(systemName: "arrow.backward"))") {
                        print("Help tapped!")
                    }
                }
                ToolbarItem {
                    Button("\(Image(systemName: "magnifyingglass"))") {
                        print("Help tapped!")
                    }
                }
            }
        }
    }
}

struct ProductPageView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPageView()
    }
}
