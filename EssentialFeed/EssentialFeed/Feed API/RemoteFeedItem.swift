//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Caio Ortu on 2/23/21.
//

import Foundation

struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
 }
