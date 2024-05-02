//
//  NameField.swift
//  Tutorial
//
//  Created by MacBook Air on 02/05/24.
//

import SwiftUI

struct NameField: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello \(name)!")
        }
    }
}

#Preview {
    NameField()
}
