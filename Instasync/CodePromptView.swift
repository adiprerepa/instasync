//
//  CodePromptView.swift
//  Instasync
//
//  Created by Adi on 6/22/22.
//

import SwiftUI

struct CodePromptView: View {
    
    var displayName: String
    @State var sessionCode = ""
    @State var sendAllChecked = true
    @State var recvAllChecked = true
    
    var body: some View {
        Text(String(format: "Join " + self.displayName + " session"))
        TextField("Session Code", text: $sessionCode)
            .border(.secondary)
            .padding(20)
        VStack {
            Toggle(isOn: $sendAllChecked) {
                Text("Send All")
            }.toggleStyle(CheckboxToggleStyle(style: .square))
                .foregroundColor(.blue)
            Toggle(isOn: $recvAllChecked) {
                Text("Receive All")
            }.toggleStyle(CheckboxToggleStyle(style: .square))
                .foregroundColor(.blue)
        }
    }
}

struct CodePromptView_Previews: PreviewProvider {
    static var previews: some View {
        CodePromptView(displayName: "Aditya")
    }
}
