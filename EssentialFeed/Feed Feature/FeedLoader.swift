//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Caio Ortu on 2/12/21.
//

import Foundation

typealias LoadFeedResult = Result<[FeedItem], Error>

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
