//
//  TestNotasTests.swift
//  TestNotasTests
//
//  Created by Mikel Valle on 13/12/23.
//


import XCTest
@testable import TestNotas

final class TestNote: XCTestCase {
    
    func testNoteInitialization() {
        let title = "Test Title"
        let text = "Test Text"
        let date = Date()
        
        let note = Note(title: title, text: text, createdAt: date)
        
        XCTAssertEqual(note.title, title)
        XCTAssertEqual(note.text, text)
        XCTAssertEqual(note.createdAt, date)
    }
    
    func testNoteEmptyText() {
        let title = "Test Title"
        let date = Date()
        
        let note = Note(title: title, text: nil, createdAt: date)
        
        XCTAssertEqual(note.getText, "")
    }
}

