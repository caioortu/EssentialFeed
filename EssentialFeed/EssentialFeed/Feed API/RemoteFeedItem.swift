//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Caio Ortu on 2/23/21.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
     internal let id: UUID
     internal let description: String?
     internal let location: String?
     internal let image: URL
 }
