//
//  NoteDataBase.swift
//  TestNotas
//
//  Created by Mikel Valle on 15/12/23.
//


import Foundation
import SwiftData

class NoteDataBase {
    static let shared: NoteDataBase = NoteDataBase()
    
    @MainActor
    var container: ModelContainer = setupContainer(inMemory: false)
    
    private init() { }
    
    @MainActor
    static func setupContainer(inMemory: Bool) -> ModelContainer {
        do {
            let container = try ModelContainer(for: Note.self, configurations: ModelConfiguration(isStoredInMemoryOnly: inMemory))
            container.mainContext.autosaveEnabled = true
            return container
        } catch {
            print("Error \(error.localizedDescription)")
            fatalError("Database can't be created")
        }
    }
    
    @MainActor
    func insert(note: Note) throws {
        container.mainContext.insert(note)
        
        do {
            try container.mainContext.save()
        } catch {
            print("Error \(error.localizedDescription)")
        }
    }
}

