//
//  ContentView.swift
//  Fruits
//
//  Created by Drashti on 08/12/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var fruits:[Fruit] = fruitsData
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
