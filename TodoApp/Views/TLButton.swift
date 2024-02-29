//
//  TLButton.swift
//  TodoApp
//
//  Created by Rüstem Pek on 27.02.2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
            .padding()
        }
    }
}

#Preview {
    TLButton(title: "Text", background: .blue) {
        // action
    }
}
