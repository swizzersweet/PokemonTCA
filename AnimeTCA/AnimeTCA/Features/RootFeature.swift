//
//  ContentView.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

@Reducer
struct Root {
    enum Tab {
        case exploreFeature
        case favorites
    }
    
    @ObservableState
    struct State {
        var currentTab = Tab.exploreFeature
        var exploreFeature = ExploreFeature.State()
        var favoriteFeature = FavoriteFeature.State()
    }
    
    enum Action {
        case exploreFeature(ExploreFeature.Action)
        case favoriteFeature(FavoriteFeature.Action)
        case selectTab(Tab)
    }
    
    var body: some Reducer<State, Action> {
        Scope(state: \.exploreFeature, action: \.exploreFeature) {
            ExploreFeature()
        }
        
        Scope(state: \.favoriteFeature, action: \.favoriteFeature) {
            FavoriteFeature()
        }
        
        Reduce { state, action in
            switch action {
            case let .selectTab(tab):
                state.currentTab = tab
                return .none
            case .exploreFeature:
                return .none
            }
        }
    }
}
