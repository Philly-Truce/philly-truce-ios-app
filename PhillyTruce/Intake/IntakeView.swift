//
//  IntakeView.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/3/23.
//

import SwiftUI

struct IntakeView: View {
    @Binding var appState: AppState
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Intake")
            
            Spacer()
            
            DarkBlueButton(text: "Cancel") {
                appState = .community
            }
        }
    }
}

struct IntakeView_Previews: PreviewProvider {
    static var previews: some View {
        IntakeView(appState: .constant(.intake))
    }
}
