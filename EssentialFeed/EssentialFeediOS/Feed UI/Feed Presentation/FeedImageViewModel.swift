//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Caio Ortu on 3/22/21.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
