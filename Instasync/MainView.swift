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
        VStack {
            TextField("Session Code", text: $sessionCode)
                .border(.secondary)
                .padding(20)
            Button("Join Session", action: {
                print("yo")
            }).padding(20)
            Button("Create Session", action: {
                
            }).padding(20)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
