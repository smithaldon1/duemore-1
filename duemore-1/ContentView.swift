//
//  ContentView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/16/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Text("Tab 1")
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("New Item")
                }
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "line.horizontal.3")
                    Text("Menu")
                }
            Text("Tab 3")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
