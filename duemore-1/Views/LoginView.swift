//
//  LoginView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/19/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
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
                                .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                                .shadow(color: Color.white.opacity(0.65), radius: 5, x: -5, y: -5)
                                .blur(radius: 1.0)
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                            SecureField(" Password", text: $password)
                                .padding()
                                .font(Font.custom("OpenSans-Regular", size: 18))
                                .frame(width: geometry.size.width/1.1, height: 50, alignment: .center)
                        }
                    }.padding()
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {
                            print("Register Here pressed")
                        }) {
                            Text("Register Here")
                                .fontWeight(.bold)
                        }
                    }.padding()
                    Button(action: {
                        print("Login button pressed")
                    }) {
                        Text("Login!")
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
