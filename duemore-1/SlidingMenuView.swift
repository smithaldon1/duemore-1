//
//  SlidingMenuView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/16/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

extension Color {
    static let dullPurple = Color(red: 135 / 255, green: 86 / 255, blue: 168 / 255)
}

struct MenuButton: Identifiable {
    var id = UUID()
    var text: String
    var sfsymbol: String
    var action: () -> Void
}

struct SlidingMenuView: View {
    var buttons: [MenuButton]
    
    var body: some View {
        HStack {
            VStack {
                Spacer().frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                ForEach(buttons, id: \.id) { thisButton in
                    Button(action: {thisButton.action()}) {
                        HStack{
                            Image(systemName: thisButton.sfsymbol)
                            Text(thisButton.text)
                        }
                        .padding()
                        .foregroundColor(Color.dullPurple)
                    }
                }
                Spacer()
            }.edgesIgnoringSafeArea(.all)
            Spacer()
            Spacer()
        }
    }
}

//struct SlidingMenuView_Previews: PreviewProvider {
//    static var previews: some View {
//        SlidingMenuView()
//    }
//}
