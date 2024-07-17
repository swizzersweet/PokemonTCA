//
//  RootView.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

struct RootView: View {
    @Bindable var store: StoreOf<Root>
    
    var body: some View {
        TabView(selection: $store.currentTab.sending(\.selectTab)) {
            PokemonView(store: store.scope(state: \.pokemonFeature, action: \.pokemonFeature))
                .tabItem { Text("Pokemon") }
            
            FavoriteView(store: store.scope(state: \.favoriteFeature, action: \.favoriteFeature))
                .tabItem { Text("Favorite") }
        }
    }
}
