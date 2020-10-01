//
//  DashboardView.swift
//  duemore-1
//
//  Created by Aldon Smith on 9/26/20.
//  Copyright © 2020 Aldon Smith. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack (alignment: .leading){
                VStack(alignment: .leading) {
                    Title()
                        .frame(width: geometry.size.width, height: geometry.size.height/10)
                    Text("Tasks")
                        .font(Font.custom("OpenSans-Bold", size: 30))
                        .foregroundColor(.blu)
                        .padding(.horizontal, 10)
                    ScrollView (.horizontal) {
                        HStack {
                            TaskCard1()
                                .frame(width: geometry.size.width/1.25, height: geometry.size.height/3, alignment: .center)
                            TaskCard1()
                                .frame(width: geometry.size.width/1.25, height: geometry.size.height/3, alignment: .center)
                        }
                    }
                }
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Title: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.purp)
            Text("Dashboard")
                .font(Font.custom("OpenSans-BoldItalic", size: 36))
                .foregroundColor(.white)
        }
    }
}

struct InboxCard: View {
    var body: some View {
        ZStack {
            
            VStack {
                Text("G")
            }
        }
    }
}

struct TaskCard1: View {
    @State var dueTasks = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack (alignment: .leading) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.08), radius: 20, x: 5, y: 10)
                        .shadow(color: Color.white.opacity(0.25), radius: 20, x: -14, y: -14)
                        .padding(10)
                    VStack{
                        Spacer().frame(height: geometry.size.height/15)
                        Text("Due Soon")
                            .font(Font.custom("OpenSans-SemiBold", size: 24))
                            .foregroundColor(.blu)
                        HStack{
                            VStack (alignment: .leading) {
                                Text("Task Title")
                                    .font(Font.custom("OpenSans-Regular", size: 18))
                                HStack {
                                    Text("Due Date")
                                    Text("/")
                                    Text("Due Time")
                                }
                                .font(Font.custom("OpenSans-LightItalic", size: 15))
                                
                            }
                            Spacer()
                            Image(systemName: "circle")
                                .font(.system(size: 30))
                        }
                        .foregroundColor(.blu)
                        .frame(maxWidth: geometry.size.width - 40)
                        Spacer()
                    }
                }
            }
        }
    }
}



struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
