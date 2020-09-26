//
//  MenuView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/24/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack (alignment: .leading) {
                    HStack {
                        NavigationLink(destination: DashboardView()){
                            Image(systemName: "house")
                                .foregroundColor(.gray)
                                .font(.system(size: 24))
                            Text("Dashboard")
                                .foregroundColor(.gray)
                                .font(Font.custom("OpenSans-SemiBold", size: 20))
                        }
                    }.padding(.top, 100)
                    HStack {
                        NavigationLink(destination: InboxView()){
                            Image(systemName: "tray.and.arrow.down.fill")
                                .foregroundColor(.gray)
                                .font(.system(size: 24))
                            Text("Inbox")
                                .foregroundColor(.gray)
                                .font(Font.custom("OpenSans-SemiBold", size: 20))
                        }
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                        Text("Tasks")
                            .foregroundColor(.gray)
                            .font(Font.custom("OpenSans-SemiBold", size: 20))
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "folder")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                        Text("Projects")
                            .foregroundColor(.gray)
                            .font(Font.custom("OpenSans-SemiBold", size: 20))
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                        Text("Calendar")
                            .foregroundColor(.gray)
                            .font(Font.custom("OpenSans-SemiBold", size: 20))
                    }
                    .padding(.top, 30)
                    HStack {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                        Text("Filters")
                            .foregroundColor(.gray)
                            .font(Font.custom("OpenSans-SemiBold", size: 20))
                    }
                    .padding(.top, 30)
                    Spacer()
                    HStack {
                        Image(systemName: "gear")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                        Image(systemName: "person.circle")
                            .foregroundColor(.gray)
                            .font(.system(size: 24))
                            .frame(width: geometry.size.width / 2.1, alignment: .trailing)
                    }
                    .padding(.vertical, 30)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 32/255, green: 32/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
