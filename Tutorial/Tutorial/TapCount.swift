//
//  SwiftUIView.swift
//  Tutorial
//
//  Created by MacBook Air on 02/05/24.
//

import SwiftUI

struct TapCount: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count \(tapCount)"){
            tapCount += 1
        }
    }
}

#Preview {
    TapCount()
}
