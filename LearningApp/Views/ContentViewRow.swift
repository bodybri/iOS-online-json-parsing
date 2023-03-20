//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by Bryan Huang on 3/20/23.
//

import SwiftUI

struct ContentViewRow: View {
    
    @Environment var model: ContentModel
    
    var index: Int
    
    var body: some View {
        let lesson = model.currentModule!.content.lessons[index]
        
        // Lesson card
        ZStack(alignment: .leading) {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            HStack(spacing: 30) {
                Text(String(index + 1))
                    .bold()
                    .padding(20)
                VStack(alignment: .leading) {
                    Text(lesson.title)
                        .bold()
                        .padding(.bottom, 2)
                    Text(lesson.duration)
                        .padding(.bottom, 2)
                }
            }
            .padding(8)
        }
        
    }
}
