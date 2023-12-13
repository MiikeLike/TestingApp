//
//  UpdateNoteView.swift
//  TestNotas
//
//  Created by Mikel Valle on 13/12/23.
//

import SwiftUI

struct UpdateNoteView: View {
    var viewModel: ViewModel // ViewModel asociado a la vista.
    let id: UUID
    @State var title: String = "" // Variable de estado para almacenar el título de la nota.
    @State var text: String = "" // Variable de estado para almacenar el texto de la nota.
    @Environment(\.dismiss) private var dismiss // Entorno que proporciona la capacidad de descartar la vista.
    
    var body: some View {
        VStack { // Contenedor de navegación personalizado que puede manejar el apilamiento de vistas.
            Form { // Formulario para organizar los elementos de entrada.
                Section {
                    TextField("", text: $title, prompt: Text("*Título"), axis: .vertical)
                    // Campo de texto para el título de la nota con una indicación (*Título) y alineación vertical.
                    
                    TextField("", text: $text, prompt: Text("*Texto"), axis: .vertical)
                    // Campo de texto para el contenido de la nota con una indicación (*Texto) y alineación vertical.
                }
            }
            Button(action: {
                viewModel.removeNoteWith(id: id)
            }, label: {
                Text("Eliminar Nota").foregroundStyle(.red).underline()
            })
            .buttonStyle(BorderedButtonStyle())
            Spacer()
        }
        .background(Color(uiColor:.systemGroupedBackground))
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    viewModel.updateNoteWith(id: id, newTitle: title, newText: text) // Botón para crear una nueva nota utilizando la función del ViewModel.
                        dismiss()//Cuando pulsamos crear nota cierra automaticamente la pantalla.
                } label: {
                    Text("Guardar") // Etiqueta del botón de creación de nota, con estilo en negrita.
                        .bold()
                }
            }
        }
        .navigationTitle("Modificar Nota") // Título de navegación para la vista.
    }

}

#Preview {
    NavigationStack{
        UpdateNoteView(viewModel: .init(), id: .init(), title: "Prueba título")
    }
}
