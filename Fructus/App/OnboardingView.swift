//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jack Pyo Toke on 10/10/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitData
    // MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(fruits){ item in
                FruitCardView(fruit: item)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

    // MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
