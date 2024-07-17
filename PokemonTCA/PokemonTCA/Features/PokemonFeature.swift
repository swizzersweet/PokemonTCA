//
//  PokemonFeature.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import Foundation

@Reducer
struct PokemonFeature {
    @ObservableState
    struct State {
        
    }
    
    enum Action {
        
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}
