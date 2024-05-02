//
//  ContentLoop.swift
//  Tutorial
//
//  Created by MacBook Air on 02/05/24.
//

import SwiftUI

struct ContentLoop: View {
    let students = ["Sesar", "Yohan", "Michel", "Fayza", "Deva"]
    @State private var selectedStudent = "Sesar"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your Student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Select a Student")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentLoop()
}
