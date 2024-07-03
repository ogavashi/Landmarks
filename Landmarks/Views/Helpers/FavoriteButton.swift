//
//  FavouriteButton.swift
//  Landmarks
//
//  Created by Oleg Gavashi on 03.07.2024.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .pink : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
