//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Caio Ortu on 2/12/21.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
        client.get(from: URL(string: "https://a-url.com")!)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTTPClientSpy: HTTPClient {
    func get(from url: URL) {
        requestedURL = url
    }
    
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func testInitDoesNotRequestDataFromURL() {
        // Given/When
        let client = HTTTPClientSpy()
        _ = RemoteFeedLoader(client: client)
        
        //Then
        XCTAssertNil(client.requestedURL)
    }
    
    func testLoadRequestDataFromUrl() {
        // Given/When
        let client = HTTTPClientSpy()
        let sut = RemoteFeedLoader(client: client)
        
        // When
        sut.load()
        
        //Then
        XCTAssertNotNil(client.requestedURL)
    }
}
