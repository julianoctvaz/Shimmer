//
//  ContentView.swift
//  Shimmer
//
//  Created by Juliano on 02/10/24.
//
// Também chamado de Skeleton

import SwiftUI
import ShimmeringUiView

struct ContentView: View {
    
//    @State var isLoading: Bool = true //2
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Color.red.opacity(0.2)
            HStack {
                Image("burnoutinho")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
                Text("Burnoutinho não é seu amiguinho")
                    .fontWeight(.bold)
                    .fontDesign(.rounded)
                    .fontWidth(.expanded)
                    .padding()
            }
            .padding(.top, 50)
//            .shimmering(active: isLoading) // 1
        }
        .ignoresSafeArea()
//        .onAppear { //3
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//                isLoading = false
//            
//            }
//        }
    }
}

#Preview {
    ContentView()
}
