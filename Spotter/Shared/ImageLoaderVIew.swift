//
//  ImageLoaderVIew.swift
//  Spotter
//
//  Created by Misha Causur on 31.03.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderVIew: View {
    
    var urlString = Constants.randomImage
    var resizingMode: ContentMode = .fill
    
    
    var body: some View {
        Rectangle()
            .opacity(0.01)
            .overlay {
                WebImage(url: URL(string: urlString))
                    .resizable()
                    .indicator(.activity)
                    .aspectRatio(contentMode: resizingMode)
                    .allowsHitTesting(false)
            }
            .clipped()
    }
}

#Preview {
    ImageLoaderVIew()
        .padding(40)
        .padding(.vertical, 60)
}
