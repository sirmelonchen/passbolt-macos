//
//  ContentView.swift
//  PassboltMacOS
//
//  Created by Konstantin Beug on 18.01.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Button("Open new Window") {
                zeigeNeuesFenster()
                        }
        }
        .padding()
        .navigationTitle("Passbolt")
    }
}

#Preview {
    ContentView()
}


func zeigeNeuesFenster() {
    let neueView = RegisterUIView()
    let hostingController = NSHostingController(rootView: neueView)

    let fenster = NSWindow(
        contentViewController: hostingController
    )
    fenster.setContentSize(NSSize(width: 400, height: 300))
    fenster.title = "Neues Fenster"
    fenster.makeKeyAndOrderFront(nil)
}
