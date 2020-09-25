//
//  RegisterView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/20/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}


struct PressedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding(5)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(RoundedRectangle(cornerRadius: 25).fill(LinearGradient(Color.black, Color.gray)))
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(RoundedRectangle(cornerRadius: 25).fill(LinearGradient(Color.clear, Color.black)))
                        )
                } else {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                        .shadow(color: Color.white.opacity(0.65), radius: 5, x: -5, y: -5)
                        .blur(radius: 1.0)
                }
            }
        )
    }
}

struct RegisterView: View {
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.white
                VStack {
                    VStack {
                        Text("Due More")
                            .font(Font.custom("OpenSans-BoldItalic", size: 55))
                            .frame(width: geometry.size.width, height: geometry.size.height/10, alignment: .top)
                        Text("Register to get started!")
                            .font(Font.custom("OpenSans-SemiBold", size: 24))
                            .frame(width: geometry.size.width, height: geometry.size.height/10, alignment: .center)
                    }
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white.opacity(0.65), radius: 5, x: -5, y: -5)
                                .blur(radius: 1.0)
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                            TextField(" Email", text: $email)
                                .padding()
                                .font(Font.custom("OpenSans-Regular", size: 18))
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                        }
                    }.padding()
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white.opacity(0.65), radius: 5, x: -5, y: -5)
                                .blur(radius: 1.0)
                            SecureField(" Password", text: $password)
                                .font(Font.custom("OpenSans-Regular", size: 18))
                                .padding()
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                                
                        }
                    }.padding()
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white.opacity(0.65), radius: 5, x: -5, y: -5)
                                .blur(radius: 1.0)
                            SecureField(" Confirm Password", text: $confirmPassword)
                                .font(Font.custom("OpenSans-Regular", size: 18))
                                .padding()
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                        }
                    }.padding()
                    HStack {
                        Text("Already have an account?")
                            .font(Font.custom("OpenSans-Regular", size: 16))
                        Button(action: {
                            print("Login Here tapped")
                        }) {
                            Text("Login Here")
                                .font(Font.custom("OpenSans-Bold", size: 16))
                        }
                    }
                    Button(action: {
                            print("Register")
                    }) {
                        Text("Register!")
                            .padding()
                            .font(Font.custom("OpenSans-Regular", size: 20))
                    }
                    .buttonStyle(PressedButtonStyle())
                }
            }
            .foregroundColor(.purp)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
