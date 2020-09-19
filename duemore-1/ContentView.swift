//
//  ContentView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/16/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        MenuButton(text: "Inbox", sfsymbol: "tray.and.arrow.down.fill", action: {
            print("Inbox Screen")
        }),
        MenuButton(text: "Tasks", sfsymbol: "pencil.circle", action: {
            print("Tasks Screen")
        }),
        MenuButton(text: "Projects", sfsymbol: "folder.fill", action: {
            print("Projects Screen")
        }),
        MenuButton(text: "Calendar", sfsymbol: "calendar", action: {
            print("Calendar Screen")
        }),
        MenuButton(text: "Filters", sfsymbol: "line.horizontal.3.decrease.circle", action: {
            print("Filters Screen")
        }),
        MenuButton(text: "Account", sfsymbol: "person.circle", action: {
            print("Account Screen")
        }),
        MenuButton(text: "Settings", sfsymbol: "gear", action: {
            print("Settings Screen")
        })
    ]
    @State var menuShown = false
    @State var textField = ""
    
    var body: some View {
        ZStack {
            SlidingMenuView(buttons: buttons)
            //Foreground View
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer().frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                    HStack {
                        Button(action: {self.menuShown.toggle()}) {
                            Image(systemName: "ellipsis")
                            .padding(10).font(.system(size: 25))
                        }
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                        
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                    .blur(radius: 4)
                                    .offset(x: -8, y: -8)
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                    .padding(2)
                                    .blur(radius: 2)
                            }
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)), radius: 20, x: 20, y: 20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                        Spacer()
                        Text("Inbox").font(.title)
                        Spacer()
                        Button(action: {self.menuShown.toggle()}) {
                            Image(systemName: "info.circle").font(.system(size: 25))
                        }
                        .padding()
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                        
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                    .blur(radius: 4)
                                    .offset(x: -8, y: -8)
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                    .padding(2)
                                    .blur(radius: 2)
                            }
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)), radius: 20, x: 20, y: 20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                    }
                    .foregroundColor(.dullPurple)
                    .padding()
                    
                    Spacer()
                    
                    List {
                        Text("Hello")
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)))
                    .font(.headline)
                    
                    
                    HStack {
                        TextField("Enter an Item", text: $textField)
                            .padding()
                        Spacer()
                        Button(action: {self.menuShown.toggle()}) {
                            Image(systemName: "info.circle").padding().font(.system(size: 25))
                        }
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                        
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                    .blur(radius: 4)
                                    .offset(x: -8, y: -8)
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                    .padding(2)
                                    .blur(radius: 2)
                            }
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)), radius: 20, x: 20, y: 20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                        Button(action: {self.menuShown.toggle()}) {
                            Image(systemName: "info.circle").padding().font(.system(size: 25))
                        }
                        .background(
                            ZStack {
                                Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1))
                                        
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .foregroundColor(.white)
                                    .blur(radius: 4)
                                    .offset(x: -8, y: -8)
                                
                                RoundedRectangle(cornerRadius: 16, style: .continuous)
                                    .fill(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        )
                                    .padding(2)
                                    .blur(radius: 2)
                            }
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(color: Color(#colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)), radius: 20, x: 20, y: 20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
                    }
                    .foregroundColor(.dullPurple)
                    .padding()
                }
            }
            .edgesIgnoringSafeArea(.all)
            .scaleEffect(menuShown ? 0.8 : 1)
            .offset(x: menuShown ? 200 : 0)
            .animation(.easeInOut(duration: 0.2))
        }
        .background(Color(#colorLiteral(red: 0.7699999809, green: 0.7699999809, blue: 0.7699999809, alpha: 1)))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
