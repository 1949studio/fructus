//
//  FructusApp.swift
//  Fructus
//
//  Created by Jack Pyo Toke on 9/10/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }
            else{
                ContentView()
            }
            
        }
    }
}
