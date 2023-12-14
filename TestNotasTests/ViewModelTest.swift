//
//  ViewModelTest.swift
//  TestNotasTests
//
//  Created by Mikel Valle on 14/12/23.
//

// Importación de XCTest y del módulo TestNotas para acceder a la clase ViewModel.
import XCTest
@testable import TestNotas

// Definición de una clase de prueba unitaria llamada ViewModelTest.
final class ViewModelTest: XCTestCase {
    var viewModel: ViewModel! // Variable para almacenar una instancia de ViewModel.

    // Configuración inicial antes de cada prueba.
    override func setUpWithError() throws {
        viewModel = ViewModel() // Inicialización de la instancia de ViewModel.
        continueAfterFailure = false // Configuración para detener las pruebas después de un fallo.
    }

    // Limpieza después de cada prueba.
    override func tearDownWithError() throws { }

    // Función de prueba para verificar la creación de una nota en el ViewModel.
    func testCreateNote() {
        // Given
        let title = "Test Title"
        let text = "Test text"
        
        // When
        viewModel.createNotewith(title: title, text: text)
        
        // Then
        // Verificación de que la nota se ha agregado al array de notas en el ViewModel.
        XCTAssertEqual(viewModel.notes.count, 1)
        // Verificación de que los atributos de la primera nota coinciden con los datos de prueba.
        XCTAssertEqual(viewModel.notes.first?.title, title)
        XCTAssertEqual(viewModel.notes.first?.text, text)
    }
    
    func testThreeCreateNote() {
        // Given
        let title = "Test Title"
        let text = "Test text"
        
        // When
        viewModel.createNotewith(title: title, text: text)
        viewModel.createNotewith(title: title, text: text)
        viewModel.createNotewith(title: title, text: text)
        
        // Then
        // Verificación de que la nota se ha agregado al array de notas en el ViewModel.
        XCTAssertEqual(viewModel.notes.count, 3)
        // Verificación de que los atributos de la primera nota coinciden con los datos de prueba.
        XCTAssertEqual(viewModel.notes.first?.title, title)
        XCTAssertEqual(viewModel.notes.first?.text, text)
        XCTAssertEqual(viewModel.notes.first?.title, title)
    }
    func testUpdateNoteWith() {
        // Datos de prueba iniciales.
        let title = "Test Title"
        let text = "Test Text"

        // Se crea una nota con los datos de prueba iniciales.
        viewModel.createNotewith(title: title, text: text)

        // Nuevos datos para la actualización de la nota.
        let newTitle = "New Title"
        let newText = "New Text"
        
        // Se intenta obtener el ID de la primera nota en el ViewModel.
        if let id = viewModel.notes.first?.id {
            // Si se obtiene un ID, se procede con la actualización de la nota.
            viewModel.updateNoteWith(id: id, newTitle: newTitle, newText: newText)
            
            // Se verifica que los atributos de la nota se hayan actualizado correctamente.
            XCTAssertEqual(viewModel.notes.first?.text, newText)
            XCTAssertEqual(viewModel.notes.first?.title, newTitle)
        } else {
            // Si no se puede obtener el ID, la prueba falla.
            XCTFail("Note was created.")
        }
    }
}

