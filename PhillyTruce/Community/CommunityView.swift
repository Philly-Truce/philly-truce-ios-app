//
//  CommunityView.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/3/23.
//

import SwiftUI

struct CommunityView: View {
    @Binding var appState: AppState
    
    var body: some View {
        ZStack {
            YouTubeVideo(videoID: "scziJ8r4_YQ")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            VStack {
                Spacer()
                
                CommunityViewButton(text: "Get Help", appState: $appState)
            }
            .padding([.bottom], 32)
        }
        .ignoresSafeArea()
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView(appState: .constant(.community))
    }
}
