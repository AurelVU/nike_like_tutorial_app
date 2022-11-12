//
//  ImageSlider.swift
//  nike_like_tutorial_app
//
//  Created by Владимир Ушаков on 11.11.2022.
//

import Foundation
import SwiftUI

struct ImageSlider: View {
    @State var currentIndex = 0
    var images: [String]
    
    var body: some View {
            ZStack(alignment: .bottom) {
                TabView(selection: $currentIndex) {
                    ForEach(0..<3) { num in
                        ZStack{
                            Color(red: 0.96, green: 0.96, blue: 0.96)
                            Image(images[num])
                                .resizable()
                                .scaledToFit()
                                .tag(num)
                            
                        }
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .tabViewStyle(.page)
                CustomTabIndicator(currentIndex: $currentIndex)
        }
    }
}
