//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Caio Ortu on 2/12/21.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
