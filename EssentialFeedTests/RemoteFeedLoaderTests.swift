//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Caio Ortu on 2/12/21.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.get(from: URL(string: "https://a-url.com")!)
    }
}

class HTTPClient {
    static var shared = HTTPClient()
    
    func get(from url: URL) {}
}

class HTTTPClientSpy: HTTPClient {
    override func get(from url: URL) {
        requestedURL = url
    }
    
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func testInitDoesNotRequestDataFromURL() {
        // Given/When
        let client = HTTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteFeedLoader()
        
        //Then
        XCTAssertNil(client.requestedURL)
    }
    
    func testLoadRequestDataFromUrl() {
        // Given/When
        let client = HTTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()
        
        // When
        sut.load()
        
        //Then
        XCTAssertNotNil(client.requestedURL)
    }
}
