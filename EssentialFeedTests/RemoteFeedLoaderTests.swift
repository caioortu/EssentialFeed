//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Caio Ortu on 2/12/21.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    let url: URL
    
    init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
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
        let url = URL(string: "https://a-url.com")!
        let client = HTTTPClientSpy()
        _ = RemoteFeedLoader(url: url, client: client)
        
        //Then
        XCTAssertNil(client.requestedURL)
    }
    
    func testLoadRequestDataFromUrl() {
        // Given
        let url = URL(string: "https://a-given-url.com")!
        let client = HTTTPClientSpy()
        let sut = RemoteFeedLoader(url: url, client: client)
        
        // When
        sut.load()
        
        //Then
        XCTAssertEqual(client.requestedURL, url)
    }
}
