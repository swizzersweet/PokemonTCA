//
//  ExploreView.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

struct ExploreView: View {
    @Bindable var store: StoreOf<ExploreFeature>
    
    var body: some View {
        VStack {
            Text("Explore View!")
                .onAppear(perform: {
                    store.send(.loadList)
                })
            
            ForEach(store.entries) { entry in
                ExploreSingleView(entry: entry)
            }
        }

    }
}

struct ExploreSingleView: View {
    let entry: ExploreFeature.State.Entry
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.gray)
            
            Text("Entry name: \(entry.name) \n \(entry.id)")
        }
        .padding()
        .frame(height: 200)
        
    }
}
