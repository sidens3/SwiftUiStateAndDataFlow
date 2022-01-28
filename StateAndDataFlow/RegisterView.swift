//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            ZStack {
                TextField("Enter your name", text: $name)
                        .multilineTextAlignment(.center)
                        .padding(60)
                HStack {
                    Spacer()
                    Text("\(name.count)")
                        .foregroundColor(name.count <= 2 ? .red : .green)
                        .padding(.trailing, 30)
                }
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userManager.name = name
            userManager.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
