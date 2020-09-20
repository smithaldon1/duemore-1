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
        .padding(10)
        .background(
            Group {
                if configuration.isPressed {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.offWhite)
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
                        .fill(Color.offWhite)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
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
        ZStack {
            Color.offWhite
            VStack {
                Group {
                    Text("Due More")
                        .font(.system(size: 50, weight: .bold, design: .serif))
                    Spacer()
                        .frame(height: 50.0)
                    Text("Register to get started!")
                        .font(.system(size: 25, weight: .light, design: .rounded))
                    Spacer()
                        .frame(height: 50.0)
                }
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.offWhite)
                            .frame(height: 35)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        TextField(" Email", text: $email)
                            .font(.system(size: 17, weight: .regular, design: .default))
                            .padding()
                            .frame(height: 35, alignment: .center)
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
                    .frame(height: 25.0)
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.offWhite)
                            .frame(height: 35)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        SecureField(" Password", text: $password)
                        .font(.system(size: 17, weight: .regular, design: .default))
                        .padding()
                        .frame(height: 35, alignment: .center)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
                    .frame(height: 25.0)
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.offWhite)
                            .frame(height: 35)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                        SecureField(" Confirm Password", text: $confirmPassword)
                        .font(.system(size: 17, weight: .regular, design: .default))
                        .padding()
                        .frame(height: 35, alignment: .center)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                HStack {
                    Text("Already have an account?")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Login Here")
                            .fontWeight(.bold)
                    }
                }.frame(height: 75)
                Button(action: {print("Register")}) {
                    Text("Register!")
                        .padding()
                        .font(.system(size: 18, weight: .regular, design: .default))
                }
                .buttonStyle(PressedButtonStyle())
            }
        }
        .foregroundColor(Color(#colorLiteral(red: 0.6039618254, green: 0.4309099019, blue: 0.7170007825, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
