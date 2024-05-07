//
//  RootNavigation.swift
//  Navigation
//
//  Created by MacBook Air on 07/05/24.
//

import SwiftUI

@Observable
class PathStore {
    var path: NavigationPath {
        didSet {
            save()
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
        
        path = NavigationPath()
    }
    
    func save() {
        guard let representation = path.codable else {return}
        
        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
    
    func remove() {
        path = NavigationPath()
    }
}

struct DetailViewTwo: View {
    var number: Int
    @Binding var path: PathStore
    
    var body: some View {
        NavigationLink("Go to Random Number", value: Int.random(in: 1...1000))
            .navigationTitle("Number: \(number)")
            .toolbar(content: {
                Button("Something Home") {
                    path.remove()
                }
            })
    }
}

struct RootNavigation: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailViewTwo(number: 0, path: $pathStore)
                .navigationDestination(for: Int.self) {
                    i in DetailViewTwo(number: i, path: $pathStore)
                }
        }
    }
}

#Preview {
    RootNavigation()
}
