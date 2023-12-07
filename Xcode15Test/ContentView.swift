//
//  ContentView.swift
//  Xcode15Test
//
//  Created by Doi Daihei on 2023/12/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Image(.iconTest)
                .imageScale(.large)
            Text("TestLabel")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
