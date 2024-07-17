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
        case pokemon
        case favorites
    }
    
    @ObservableState
    struct State {
        var currentTab = Tab.pokemon
    }
    
    enum Action: Sendable {
        
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}
