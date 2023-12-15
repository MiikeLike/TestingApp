//
//  NoteDataBase.swift
//  TestNotas
//
//  Created by Mikel Valle on 15/12/23.
//

// Importa el framework Foundation, que proporciona las clases fundamentales en Swift.
import Foundation

// Importa el framework SwiftData para manejar bases de datos en Swift.
import SwiftData

// Define una clase llamada NoteDataBase para gestionar la base de datos de notas.
class NoteDataBase {
    
    // Declara una instancia compartida (Singleton) de la clase para asegurar una única instancia.
    static let shared: NoteDataBase = NoteDataBase()
    @MainActor
    // Declara una propiedad container que representa el contenedor de la base de datos.
    // La anotación @MainActor indica que las operaciones relacionadas con esta propiedad deben realizarse en el hilo principal.
    var container: ModelContainer = setupContainer(inMemory: false)
    
    // Inicializador privado para garantizar que solo haya una instancia de la base de datos.
    private init() { }
    
    // Función estática para configurar y crear la instancia del contenedor de la base de datos.
    // Devuelve un objeto ModelContainer.
    @MainActor
    static func setupContainer(inMemory: Bool) -> ModelContainer {
        do {
            // Intenta crear un contenedor de modelo para la entidad Note con la configuración adecuada.
            let container = try ModelContainer(for: Note.self, configurations: ModelConfiguration(isStoredInMemoryOnly: inMemory))
            
            // Habilita la opción de guardado automático en el contexto principal del contenedor.
            container.mainContext.autosaveEnabled = true
            
            // Devuelve el contenedor creado.
            return container
        } catch {
            // Si hay un error al crear el contenedor, imprime un mensaje de error y provoca una fatalidad.
            print("Error \(error.localizedDescription)")
            fatalError("Database can't be created")
        }
    }
    
    // Función para insertar una nota en la base de datos.
    // Toma una nota como parámetro y lanza un error en caso de fallo.
    @MainActor
    func insert(note: Note) throws {
        // Inserta la nota en el contexto principal del contenedor.
        container.mainContext.insert(note)
        
        do {
            // Intenta guardar los cambios en el contexto principal.
            try container.mainContext.save()
        } catch {
            // Si hay un error al guardar, imprime un mensaje de error.
            print("Error \(error.localizedDescription)")
        }
    }
}

