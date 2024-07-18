//
//  FavoriteFeature.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture

@Reducer
struct FavoriteFeature {
    @ObservableState
    struct State: Equatable {
        
    }
    
    enum Action {
        
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}
