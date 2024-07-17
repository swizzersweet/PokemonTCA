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
    enum Tab { case counter, profile }
    
    @ObservableState
    struct State {
        var currentTab = Tab.counter
    }
    
    enum Action: Sendable {
        
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}

struct RootView: View {
    @Bindable var store: StoreOf<Root>
    
    var body: some View {
        Text("root view")
    }
}
