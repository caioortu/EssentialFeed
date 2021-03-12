//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Caio Ortu on 2/12/21.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
