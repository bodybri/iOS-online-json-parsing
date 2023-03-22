//
//  RectangleCard.swift
//  LearningApp
//
//  Created by Bryan Huang on 3/21/23.
//

import SwiftUI

struct RectangleCard: View {
    var color = Color.white
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .cornerRadius(10)
            .shadow(radius:5)
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
