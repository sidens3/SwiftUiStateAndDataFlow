//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("name") var name = ""
    
    func logOut() {
        name = ""
        isRegister = false
    }
}
