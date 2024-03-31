//
//  ImageLoaderVIew.swift
//  Spotter
//
//  Created by Misha Causur on 31.03.2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderVIew: View {
    
    var urlString = String.empty
    var body: some View {
        WebImage(url: URL(string: urlString))
    }
}

#Preview {
    ImageLoaderVIew()
}
