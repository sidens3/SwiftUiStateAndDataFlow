//
//  BorderedButton.swift
//  StateAndDataFlow
//
//  Created by Михаил Зиновьев on 28.01.2022.
//

import SwiftUI

struct BorderedButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(backgroundColor)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct BorderedButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BorderedButton(title: "Start", backgroundColor: .red, action: {})
    }
}

