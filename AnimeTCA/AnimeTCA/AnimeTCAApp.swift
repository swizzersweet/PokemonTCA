//
//  AnimeTCAApp.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture
import SwiftUI

@main
struct AnimeTCAApp: App {
    var body: some Scene {
        WindowGroup {
            RootView(store:
                        Store(initialState: Root.State(),
                              reducer: { Root() },
                              withDependencies: { dependencyValues in
                dependencyValues.animeListClient = .liveValue
            }))
        }
    }
}
