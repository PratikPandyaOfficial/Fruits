//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Drashti on 09/12/23.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - Properties
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    //MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}
// MARK: - Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "John / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
