//
//  PokemonView.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

struct PokemonView: View {
    @Bindable var store: StoreOf<PokemonFeature>
    
    var body: some View {
        VStack {
            Text("Pokemon View!")
                .onAppear(perform: {
                    store.send(.loadPokemon)
                })
            
            ForEach(store.entries) { entry in
                PokemonSingleView(entry: entry)
            }
        }

    }
}

struct PokemonSingleView: View {
    let entry: PokemonFeature.State.Entry
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.gray)
            
            Text("Pokemon name: \(entry.name) \n \(entry.id)")
        }
        .padding()
        .frame(height: 200)
        
    }
}
