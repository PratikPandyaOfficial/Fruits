//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Drashti on 08/12/23.
//

import SwiftUI

struct OnBoardingView: View {
    
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }//: loop
        }//: Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
