//
//  JoinSessionView.swift
//  Instasync
//
//  Created by Adi on 6/14/22.
//

import SwiftUI

struct JoinSessionView: View {
    var code: String
    @StateObject var instasyncSession = InstaSyncMultipeerSession()
    
    var body: some View {
        VStack {
            Text(code)
            Text("Available Devices:")
            Text(String(describing:instasyncSession.availablePeers.map(\.displayName)))
        }
    }
}

struct JoinSessionView_Previews: PreviewProvider {
    static var previews: some View {
        JoinSessionView(code: "foo")
    }
}
