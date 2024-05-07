//
//  ContentView.swift
//  Navigation
//
//  Created by MacBook Air on 02/05/24.
//

import SwiftUI

//struct DetailView: View {
//    var number: Int
//    
//    var body: some View {
//        Text("Detail View \(number)")
//    }
//    
//    init(number: Int) {
//        self.number = number
//        print("Creating detial view \(number)")
//    }
//}

struct Student: Hashable {
    var id = UUID()
    var name: String
    var age: Int
}

struct ContentView: View {
//    var body: some View {
//        NavigationStack {
//            List(0..<1000) { i in
//                NavigationLink("Select \(i)", value: i)
//                    .navigationDestination(for: Int.self) { selection in
//                        Text("You selected \(selection)")
//                    }
//            }
//        }
//    }
    
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                    print(path)
                }
                Button("Show 64") {
                    path = [64]
                    print(path)
                }
                Button("Show 32 then 64") {
                    path = [32, 64]
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
