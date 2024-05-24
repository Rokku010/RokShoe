//
//  ImageSlider.swift
//  RokShoe
//
//  Created by Quốc Lộc on 22/05/2024.
//

import SwiftUI

struct ImageSlider: View {
    
    var images : [String]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){ img in
                AsyncImage(url: URL(string: img)){ Image in
                    Image.resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
               
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

