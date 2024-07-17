//
//  PokemonAPIClient.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture

struct PokemonAPIClient {
    var fetch: (Int) async throws -> [String]
}

extension PokemonAPIClient: DependencyKey {
    static var liveValue: PokemonAPIClient {
        return PokemonAPIClient(fetch: { number in
            ["a","b","c"]
        })
    }
}

extension DependencyValues {
    var pokemonAPIClient: PokemonAPIClient {
        get { self[PokemonAPIClient.self] }
        set { self[PokemonAPIClient.self] = newValue }
    }
}
