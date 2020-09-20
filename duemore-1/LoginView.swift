//
//  LoginView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/19/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 255 / 255, green: 250 / 255, blue: 245 / 255)
}

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        ZStack {
            Color.offWhite
            VStack {
                Text("Due More")
                    .font(.system(size: 50, weight: .bold, design: .serif))
                Spacer()
                    .frame(height: 50.0)
                Text("Login to get back at it!")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                Spacer()
                    .frame(height: 50.0)
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
                    Text("Don't have an account?")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Register Here")
                            .fontWeight(.bold)
                    }
                }.frame(height: 75.0)
                Button(action: {}) {
                    Text("Login!")
                        .padding()
                        .font(.system(size: 20, weight: .regular, design: .default))
                }
                .buttonStyle(PressedButtonStyle())
            }
        }
        .foregroundColor(Color(#colorLiteral(red: 0.6039618254, green: 0.4309099019, blue: 0.7170007825, alpha: 1)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
