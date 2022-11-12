//
//  CustomTabIndicator.swift
//  nike_like_tutorial_app
//
//  Created by Владимир Ушаков on 11.11.2022.
//

import SwiftUI

struct CustomTabIndicator: View {
    @Binding var currentIndex: Int
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<3) { num in
                if currentIndex == num {
                    Rectangle()
                        .frame(height: 4)
                        .foregroundColor(Color(red: 89 / 256, green: 89 / 256, blue: 89 / 256))
                }
                    else {
                    Rectangle()
                            .frame(height: 4)
                            .foregroundColor(Color(red: 0.85, green: 0.85, blue: 0.85))
                }
            }
        }
        .padding(.horizontal, 70)
        .padding(.bottom, 14)
    }
}
