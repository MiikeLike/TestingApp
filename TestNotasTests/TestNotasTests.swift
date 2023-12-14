//
//  TestNotasTests.swift
//  TestNotasTests
//
//  Created by Mikel Valle on 13/12/23.
//

// Importación de XCTest y del módulo TestNotas para acceder a la clase Note.
// Importación de XCTest y del módulo TestNotas para acceder a la clase Note.
import XCTest
@testable import TestNotas

// Definición de una clase de prueba unitaria llamada TestNote.
final class TestNote: XCTestCase {
    
    // Given or Arrange
    // Función de prueba para verificar la inicialización de una nota.
    func testNoteInitialization() {
        // Datos de prueba.
        let title = "Test Title"
        let text = "Test Text"
        let date = Date()
        
        // When or Act
        // Creación de una instancia de la clase Note con los datos de prueba.
        let note = Note(title: title, text: text, createdAt: date)
        
        // Then or Assert
        // Verificación de que los atributos de la nota coincidan con los datos de prueba.
        XCTAssertEqual(note.title, title)
        XCTAssertEqual(note.text, text)
        XCTAssertEqual(note.createdAt, date)
    }
    
    // Given
    func testNoteEmptyText() {
        let title = "Test Title"
        let date = Date()
        
        // When
        // Creación de una instancia de la clase Note con texto nulo.
        let note = Note(title: title, text: nil, createdAt: date)
        
        // Then
        // Verificación de que el método getText devuelve una cadena vacía para el texto nulo.
        XCTAssertEqual(note.getText, "")
    }
}

