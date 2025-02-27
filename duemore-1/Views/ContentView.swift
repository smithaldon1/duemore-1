//
//  ContentView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/16/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

extension Color {
    static let purp = Color(red: 102/255, green: 22/255, blue: 156/255)
    static let blu = Color(red: 34/255, green: 57/255, blue: 149/255)
}

struct ContentView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
                    .onEnded {
                        if $0.translation.width < -100 {
                            withAnimation {
                                self.showMenu = false
                            }
                        }
                    }

        return NavigationView {
            GeometryReader { geometry in
                ZStack (alignment: .leading){
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width / 2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Side Menu", displayMode: .inline)
            .navigationBarItems(leading: (
                                Button(action: {
                                    withAnimation {
                                        self.showMenu.toggle()
                                    }
                                }) {
                                    Image(systemName: "line.horizontal.3")
                                        .font(.system(size: 25))
                                    }
                                ))
        }
    }
}

struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
        }) {
            Text("Show Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
