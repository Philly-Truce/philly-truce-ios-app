//
//  CommunityViewButton.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/3/23.
//

import SwiftUI

struct CommunityViewButton: View {
    var text: String
    @Binding var appState: AppState
    
    private let darkBlue = Color(red: 15/255, green: 45/255, blue: 115/255)
    
    var body: some View {
        Button {
            appState = .intake
        } label: {
            Text(text)
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .frame(width: UIScreen.main.bounds.width - 112)
                .padding([.leading, .trailing], 8)
                .padding([.top,.bottom], 20)
                .background(darkBlue)
                .cornerRadius(16)
                .padding([.bottom], 16)
            
        }
    }
}
