//
//  ContentView.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/3/23.
//

import SwiftUI

struct ContainerView: View {
    @State private var appState: AppState = .community
    
    var body: some View {
        switch appState {
        case .community:
            CommunityView(appState: $appState)
        case .intake:
            IntakeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
