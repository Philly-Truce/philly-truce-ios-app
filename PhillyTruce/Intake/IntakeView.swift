//
//  IntakeView.swift
//  PhillyTruce
//
//  Created by Daveed Balcher on 2/3/23.
//

import SwiftUI

struct IntakeView: View {
    @Binding var appState: AppState
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var mobileNumber: String = ""
    @State var email: String = ""
    @State var conflictDetails: String = ""
    @State var issue: IssueType = .personalConflict
    enum IssueType {
        case personalConflict
        case domesticIssue
        case neighborhoodDispute
        case other
        
        var label: String {
            switch self {
            case .personalConflict: return "Personal Conflict"
            case .domesticIssue: return "Family/Domestic Issue"
            case .neighborhoodDispute: return "Neighborhood Dispute"
            case .other: return "Other"
            }
        }
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Your Info")) {
                    Text("Your information will be kept private")
                        .foregroundColor(.red)
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Mobile Number", text: $mobileNumber)
                    TextField("Email (optional)", text: $email)
                }
                Section(header: Text("Location")) {
                    
                }
                Section(header: Text("Conflict Details")) {
                    Picker(selection: $issue, label: Text("")) {
                        Text(IssueType.personalConflict.label)
                            .tag(IssueType.personalConflict)
                        Text(IssueType.domesticIssue.label)
                            .tag(IssueType.domesticIssue)
                        Text(IssueType.neighborhoodDispute.label)
                            .tag(IssueType.neighborhoodDispute)
                        Text(IssueType.other.label)
                            .tag(IssueType.other)
                    }.pickerStyle(.inline)

                    ZStack(alignment: .topLeading) {
                        TextEditor(text: $conflictDetails)
                            .frame(minHeight: 100, maxHeight: 400, alignment: .leading)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1))
                            .padding()
                        Text("What's going on?")
                            .frame(minHeight: 100, maxHeight: 400, alignment: .center)
                            .padding(.leading, 50)
                            .opacity(conflictDetails == "" ? 1 : 0)
                    }
                }
                
                DarkBlueButton(text: "Send") {
                    appState = .community
                }
                DarkBlueButton(text: "Cancel") {
                    appState = .community
                }
            }
            .navigationTitle("Get Help")
        }
    }
}

struct IntakeView_Previews: PreviewProvider {
    static var previews: some View {
        IntakeView(appState: .constant(.intake))
    }
}
