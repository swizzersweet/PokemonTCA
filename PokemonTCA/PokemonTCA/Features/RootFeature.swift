//
//  ContentView.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct Root {
    enum Tab {
        case pokemonFeature
        case favorites
    }
    
    @ObservableState
    struct State {
        var currentTab = Tab.pokemonFeature
        var pokemonFeature = PokemonFeature.State()
        var favoriteFeature = FavoriteFeature.State()
    }
    
    enum Action {
        case pokemonFeature(PokemonFeature.Action)
        case favoriteFeature(FavoriteFeature.Action)
        case selectTab(Tab)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: \.pokemonFeature, action: \.pokemonFeature) {
            PokemonFeature()
        }
        
        Scope(state: \.favoriteFeature, action: \.favoriteFeature) {
            FavoriteFeature()
        }
        
        Reduce { state, action in
            switch action {
            case let .selectTab(tab):
                state.currentTab = tab
                return .none
            case .pokemonFeature:
                return .none
            }
        }
    }
}
