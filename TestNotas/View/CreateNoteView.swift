//
//  CreateNoteView.swift
//  TestNotas
//
//  Created by Mikel Valle on 13/12/23.
//

import SwiftUI

struct CreateNoteView: View {
    var viewModel: ViewModel // ViewModel asociado a la vista.
    @State var title: String = "" // Variable de estado para almacenar el título de la nota.
    @State var text: String = "" // Variable de estado para almacenar el texto de la nota.
    @Environment(\.dismiss) private var dismiss // Entorno que proporciona la capacidad de descartar la vista.
    
    var body: some View {
        NavigationStack { // Contenedor de navegación personalizado que puede manejar el apilamiento de vistas.
            Form { // Formulario para organizar los elementos de entrada.
                Section {
                    TextField("", text: $title, prompt: Text("Introducir Título"), axis: .vertical)
                    // Campo de texto para el título de la nota con una indicación (*Título) y alineación vertical.
                    
                    TextField("", text: $text, prompt: Text("Introducir Texto"), axis: .vertical)
                    // Campo de texto para el contenido de la nota con una indicación (*Texto) y alineación vertical.
                } footer: {
                    Text("* El título es obligatorio") // Mensaje de pie de sección indicando que el título es obligatorio.
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss() // Botón para cerrar la vista utilizando la función dismiss del entorno.
                    } label: {
                        Text("Cerrar") // Etiqueta del botón de cierre.
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        viewModel.createNotewith(title: title, text: text) // Botón para crear una nueva nota utilizando la función del ViewModel.
                            dismiss()//Cuando pulsamos crear nota cierra automaticamente la pantalla.
                    } label: {
                        Text("Crear Nota") // Etiqueta del botón de creación de nota, con estilo en negrita.
                            .bold()
                    }
                }
            }
        }
        .navigationTitle("Nueva Nota") // Título de navegación para la vista.
        .navigationBarTitleDisplayMode(.large) // Modo de visualización del título de navegación.
    }
}



#Preview {
    CreateNoteView(viewModel: .init())
}
