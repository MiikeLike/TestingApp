//
//  ViewModelTest.swift
//  TestNotasTests
//
//  Created by Mikel Valle on 14/12/23.
//


import XCTest
@testable import TestNotas

final class ViewModelTest: XCTestCase {
    var viewModel: ViewModel!

    override func setUpWithError() throws {
        viewModel = ViewModel()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws { }

    func testCreateNote() {
        let title = "Test Title"
        let text = "Test text"
        
        viewModel.createNotewith(title: title, text: text)
        
        XCTAssertEqual(viewModel.notes.count, 1)
        XCTAssertEqual(viewModel.notes.first?.title, title)
        XCTAssertEqual(viewModel.notes.first?.text, text)
    }
    
    func testThreeCreateNote() {
        let title = "Test Title"
        let text = "Test text"
        
        viewModel.createNotewith(title: title, text: text)
        viewModel.createNotewith(title: title, text: text)
        viewModel.createNotewith(title: title, text: text)
        
        XCTAssertEqual(viewModel.notes.count, 3)
        XCTAssertEqual(viewModel.notes.first?.title, title)
        XCTAssertEqual(viewModel.notes.first?.text, text)
        XCTAssertEqual(viewModel.notes.first?.title, title)
    }
    
    func testUpdateNoteWith() {
        let title = "Test Title"
        let text = "Test Text"

        viewModel.createNotewith(title: title, text: text)

        let newTitle = "New Title"
        let newText = "New Text"
        
        if let identifier = viewModel.notes.first?.identifier {
            viewModel.updateNoteWith(identifier: identifier, newTitle: newTitle, newText: newText)
            
            XCTAssertEqual(viewModel.notes.first?.text, newText)
            XCTAssertEqual(viewModel.notes.first?.title, newTitle)
        } else {
            XCTFail("Note was created.")
        }
    }
    
    func testRemoveNote() {
        let title = "Test Title"
        let text = "Test Text"

        viewModel.createNotewith(title: title, text: text)
        
        if let identifier = viewModel.notes.first?.identifier {
            viewModel.removeNoteWith(identifier: identifier)
            
            XCTAssertTrue(viewModel.notes.isEmpty)
        } else {
            XCTFail("Note was created.")
        }
    }
}

