//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 26.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
            LogOutBotton()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        BorderedButton(title: timer.buttonTitle,
                       backgroundColor: .red,
                       action: timer.startTimer)
    }
}

struct LogOutBotton: View {
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        BorderedButton(title: "LogOut",
                       backgroundColor: .blue,
                       action: userManager.logOut)
    }
}
