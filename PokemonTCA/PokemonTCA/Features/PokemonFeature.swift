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
    
    @Dependency(\.continuousClock) var clock
    @Dependency(\.pokemonAPIClient) var pokemonAPIClient
    
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
        case loadPokemon
        case selectItem(UUID)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .loadPokemon:
                print("load pokemon!")
            case let .selectItem(uuid):
                print("select item", uuid)
            }
            
            return .none
        }
    }
}
