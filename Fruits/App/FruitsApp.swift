//
//  FruitsApp.swift
//  Fruits
//
//  Created by Drashti on 08/12/23.
//

import SwiftUI

@main
struct FruitsApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }
            else{
                ContentView()
            }
        }
    }
}
