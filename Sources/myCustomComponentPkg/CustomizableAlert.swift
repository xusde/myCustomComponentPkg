//
//  File.swift
//  
//
//  Created by Peter Xu on 3/17/24.
//

import SwiftUI

@available(macOS 10.15, *)
public struct CustomizableAlert: View {
    let title: String
    let message: String
    let messageFontSize: CGFloat
    let boxSize: CGSize
    let boxBackgroundColor: Color

    public init(title: String,
                message: String,
                messageFontSize: CGFloat = 14,
                boxSize: CGSize = CGSize(width: 300, height: 200),
                boxBackgroundColor: Color = .white) {
        self.title = title
        self.message = message
        self.messageFontSize = messageFontSize
        self.boxSize = boxSize
        self.boxBackgroundColor = boxBackgroundColor
    }

    public var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .padding()
            
            Text(message)
                .font(.system(size: messageFontSize))
                .padding()
        }
        .frame(width: boxSize.width, height: boxSize.height)
        .background(boxBackgroundColor)
        .cornerRadius(12)
        .shadow(radius: 10)
        .padding()
    }
}
