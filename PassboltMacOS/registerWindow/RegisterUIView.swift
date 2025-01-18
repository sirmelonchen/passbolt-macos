//
//  SwiftUIView.swift
//  PassboltMacOS
//
//  Created by Konstantin Beug on 18.01.25.
//

import SwiftUI

struct RegisterUIView: View {
    @State var siteURL: String = ""
    @State var UserPassword: String = ""
    @State var PrivateKeyPath: String = ""
    
    
    var body: some View {
        VStack{
            Text("Register")
            TextField("Server URL", text: $siteURL).padding().textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Password", text: $UserPassword).padding().textFieldStyle(RoundedBorderTextFieldStyle())
                .textContentType(.password)
            TextField("PrivateKeyPath", text: $PrivateKeyPath).padding().textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {register(adress: siteURL, password: password, privateKeyFile: PrivateKeyPath)}, label: {Text("Register")})
            
        }
        .padding()
        .navigationTitle("Register")
        
    }
    
}

#Preview {
    RegisterUIView()
}
