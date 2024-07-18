//
//  ExploreFeature.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import Foundation

@Reducer
struct ExploreFeature {
    
    @Dependency(\.continuousClock) var clock
    @Dependency(\.animeListClient) var animeListClient
    
    @ObservableState
    struct State {
        struct Entry: Equatable, Identifiable {
            let name: String
            let id: UUID
        }
        
        var entries: IdentifiedArrayOf<Entry> = [
            Entry(name: "Pikachu", id: UUID())
        ]
    }
    
    enum Action {
        case loadList
        case selectItem(UUID)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .loadList:
                print("load list!")
            case let .selectItem(uuid):
                print("select item", uuid)
            }
            
            return .none
        }
    }
}
