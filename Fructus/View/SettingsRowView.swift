//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Jack Pyo Toke on 10/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    // MARK: - BODY
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack{
        Divider().padding(.vertical, 4)
        HStack {
            Text(name).foregroundColor(Color.gray)
            Spacer()
            if let c = content {
                Text(c)
            }
            else if let l = linkLabel, let ld = linkDestination {
                Link(l, destination: URL(string: "https://\(ld)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }
            else {
                EmptyView()
            }
        }
        }
    }
}

    // MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Jack Toke")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website", linkLabel: "www.mrtoke.me", linkDestination: "www.mrtoke.me")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
