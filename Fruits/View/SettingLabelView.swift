//
//  SettingLabelView.swift
//  Fruits
//
//  Created by Drashti on 09/12/23.
//

import SwiftUI

struct SettingLabelView: View {
    // MARK: - Properties
    var labelText:String
    var labelImage:String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
// MARK: - Preview
struct SettingLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
