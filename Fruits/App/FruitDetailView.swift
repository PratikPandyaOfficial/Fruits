//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Drashti on 08/12/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    var fruit: Fruit
    //MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }//Vstack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//Vstack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }//Scroll
            .edgesIgnoringSafeArea(.top)
        }//Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - Preview
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
