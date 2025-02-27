//
//  InboxView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/24/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct InboxView: View {
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack (alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Inbox", displayMode: .inline)
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

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
