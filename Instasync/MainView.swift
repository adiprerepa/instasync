//
//  MainView.swift
//  Instasync
//
//  Created by Adi on 6/14/22.
//

import SwiftUI

struct MainView: View {
    
    @State private var sessionCode: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Session Code", text: $sessionCode)
                    .border(.secondary)
                    .padding(20)
                NavigationLink(destination: JoinSessionView(code: sessionCode), label: {
                    Text("Join Session")
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .cornerRadius(40)
                        .foregroundColor(.blue)
                })
                NavigationLink(destination: CreateSessionView(), label: {
                    Text("Create Session")
                        .padding()
                        .frame(minWidth: 0, maxWidth: 300)
                        .cornerRadius(40)
                        .foregroundColor(.blue)
                })
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
