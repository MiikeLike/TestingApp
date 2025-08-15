//
//  ViewModel.swift
//  TestNotas
//
//  Created by Mikel Valle on 12/12/23.
//


//ViewModel encargado de implementación como: crear notas, actualizar notas y eliminar notas
import Foundation
import Observation

@Observable
class ViewModel {
    var notes: [Note]
    
    init(notes: [Note] = []) {
        self.notes = notes
    }
    
    func createNotewith(title: String, text: String) {
        let note: Note = .init(title: title, text: text, createdAt: .now)
        notes.append(note)
    }
    
    func updateNoteWith(identifier: UUID, newTitle: String, newText: String?) {
        if let index = notes.firstIndex(where: { $0.identifier == identifier }) {
            let updateNote = Note(identifier: identifier, title: newTitle, text: newText, createdAt: notes[index].createdAt)
            notes[index] = updateNote
        }
    }
    
    func removeNoteWith(identifier: UUID) {
        notes.removeAll(where: {$0.identifier == identifier})
    }
}
