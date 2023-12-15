//
//  ViewModel.swift
//  TestNotas
//
//  Created by Mikel Valle on 12/12/23.
//


//ViewModel encargado de implementación como: crear notas, actualizar notas y eliminar notas
import Foundation
import Observation

@Observable//Implementación de metodo introducido en xCode 15, cualquier cambio realizado en notes será escuchado desde la vista y lo mostrará
class ViewModel {
    var notes: [Note]//Creamos el array de notas
    //Creamos el inicializador y le damos un valor inicial a las notas del ViewModel añadimos un array vaicio []
    init(notes: [Note] = []) {
        self.notes = notes
    }
    //Función de creación de notas(Lo realizamos en memoria)
    func createNotewith(title: String, text: String) {
        let note: Note = .init(title: title, text: text, createdAt: .now)
        notes.append(note)//Hemos añadido el metodo en el arrays de notes
    }
    //Función de actualizar notas
    func updateNoteWith(identifier: UUID, newTitle: String, newText: String?) {
        if let index = notes.firstIndex(where: { $0.identifier == identifier }) {
            let updateNote = Note(identifier: identifier, title: newTitle, text: newText, createdAt: notes[index].createdAt)
            notes[index] = updateNote
        }
    }
    //Función de eliminación
    func removeNoteWith(identifier: UUID) {
        notes.removeAll(where: {$0.identifier == identifier})
    }
}
