//
//  HomeView.swift
//  Spotter
//
//  Created by Misha Causur on 02.04.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var currentUser: User? = nil
    var body: some View {
        ZStack {
            Color.sblack.ignoresSafeArea()
            
            HStack {
                if let currentUser {
                    ImageLoaderVIew(urlString: currentUser.image)
                        .frame(width: 30, height: 30)
                        .background(.swhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                        }
                }
                ScrollView(.horizontal) {
                    HStack(spacing: 8) {
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .fill(.sgray)
                                .frame(width: 10, height: 10)
                        }
                    }
                }
            }
        }
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().first
            
        } catch {
            
        }
    }
}

#Preview {
    HomeView()
}
