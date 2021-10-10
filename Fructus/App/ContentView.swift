//
//  ContentView.swift
//  Fructus
//
//  Created by Jack Pyo Toke on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitData
    @State private var isShowingSettings: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }
                                    .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
            )
        }//: Navigation
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
            .previewDevice("iPhone 13")
    }
}
