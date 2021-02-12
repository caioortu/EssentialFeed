//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Caio Ortu on 2/12/21.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func testInitDoesNotRequestDataFromURL() {
        // Given/When
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        //Then
        XCTAssertNil(client.requestedURL)
    }
    
    func testLoadRequestDataFromUrl() {
        // Given/When
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        // When
        sut.load()
        
        //Then
        XCTAssertNotNil(client.requestedURL)
    }
}
