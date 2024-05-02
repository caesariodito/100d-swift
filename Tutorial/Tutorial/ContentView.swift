//
//  ContentView.swift
//  Tutorial
//
//  Created by MacBook Air on 02/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Section {
                    Text("Something")
                    Text("Something")
                    Text("Something")
                    Text("Something")
                }
            }
            .navigationTitle("Testing")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview { 
    ContentView()
}
