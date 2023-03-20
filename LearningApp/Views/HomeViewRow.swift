//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by Bryan Huang on 3/19/23.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image: String
    var title: String
    var description: String
    var count: String
    var time: String
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175),contentMode: .fit)
            
            HStack {
                
                // Image
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                    .padding(12)
                
                Spacer()
                // Text
                VStack(alignment: .leading, spacing: 20) {
                    
                    // Headline
                    Text(title)
                        .bold()
                    
                    
                    // Description
                    Text(description)
                        .padding(.bottom, 20)
                        .font(Font.system(size: 12))
                        .font(.caption)
                    
                    // Icons
                    HStack {
                        // number of lessons/Questions
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15,height: 15)
                        Text(count)
                            .font(.caption2)

                        Spacer()
                        // time
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15,height: 15)
                        Text(time)
                            .font(.caption2)
                            .padding(2)
                    }
                    
                }
                .padding(.horizontal, 10)
            }
            
        }    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn Swift", description: "Some description", count: "10 Lessons", time: "2 Hours")
    }
}
