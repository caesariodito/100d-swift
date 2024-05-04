//
//  ADAChallenge.swift
//  Navigation
//
//  Created by MacBook Air on 03/05/24.
//

import SwiftUI

struct ADAChallenge: View {
    var body: some View {
//        CHALLENGE 1
//        HStack {
//            Text("Hello, world!")
//            Spacer()
//            Text("I'm over here!")
//        }
//        Text("I'am a very long text hello :)")
        
//        CHALLENGE 2
//        HStack {
//            Spacer()
//            VStack {
//                Spacer()
//                Text("Something")
//                Spacer()
//                Text("Something")
//                Spacer()
//            }
//            Spacer()
//            VStack {
//                Spacer()
//                Text("Something")
//                Spacer()
//                Text("Something")
//                Spacer()
//            }
//            Spacer()
//        }
        
//        CHALLENGE 3
//        VStack {
//            Spacer()
//            ZStack {
//                Text("Hello World")
//                Image(systemName: "globe")
//            }
//            Spacer()
//            ZStack {
//                Text("Hello World")
//                Image(systemName: "globe")
//            }
//            Spacer()
//        }
        
//        CHALLENGE 4
        HStack {
            VStack {
                ZStack {
                    Text("Something")
                    Image(systemName: "globe")
                }
                ZStack {
                    Text("Something")
                    Image(systemName: "globe")
                }
            }
            VStack {
                ZStack {
                    Text("Something")
                    Image(systemName: "globe")
                }
                ZStack {
                    Text("Something")
                    Image(systemName: "globe")
                }
            }
        }
    }
}

#Preview {
    ADAChallenge()
}
