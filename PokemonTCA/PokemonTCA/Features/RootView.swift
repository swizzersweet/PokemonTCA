//
//  RootView.swift
//  PokemonTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

struct RootView: View {
    @Bindable var store: StoreOf<Root>
    
    var body: some View {
        Text("root view")
    }
}
