//
//  AnimeListAPIClient.swift
//  AnimeTCA
//
//  Created by Jonathan Menard on 2024-07-17.
//

import ComposableArchitecture

// https://anilist.gitbook.io/anilist-apiv2-docs/overview/graphql/

struct AnimeListClient {
    var fetch: (Int) async throws -> [String]
}

extension AnimeListClient: DependencyKey {
    static var liveValue: AnimeListClient {
        return AnimeListClient(fetch: { number in
            ["a","b","c"]
        })
    }
}

extension DependencyValues {
    var animeListClient: AnimeListClient {
        get { self[AnimeListClient.self] }
        set { self[AnimeListClient.self] = newValue }
    }
}
