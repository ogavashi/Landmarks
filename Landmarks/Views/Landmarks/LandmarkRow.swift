//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Oleg Gavashi on 03.07.2024.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundStyle(.pink)
            }
        }
    }
}

#Preview("Group") {
    let landmarks = ModelData().landmarks
    
    return Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
