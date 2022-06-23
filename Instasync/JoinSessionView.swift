//
//  JoinSessionView.swift
//  Instasync
//
//  Created by Adi on 6/14/22.
//

import SwiftUI

struct JoinSessionView: View {
//    @StateObject var instasyncSession = InstaSyncMultipeerSession()
    var l = ["Aditya", "Mihit", "Nikhil"]
    
    var body: some View {
//            Text(String(describing:instasyncSession.availablePeers.map(\.displayName)))
            		
//            NavigationView {
//                List(instasyncSession.availablePeers, id:\.displayName) { peer in
//                    NavigationLink(destination: CodePromptView(displayName: peer.displayName)) {
//                        Text(peer.displayName)
//                    }
//                }
//            }
            
            NavigationView {
                List(l, id:\.self) { peer in
                    NavigationLink(destination: CodePromptView(displayName: peer)) {
                        Text(peer)
                    }
                }
            }.navigationBarTitle("Select a Device")
    }
}

struct JoinSessionView_Previews: PreviewProvider {
    static var previews: some View {
        JoinSessionView()
    }
}
