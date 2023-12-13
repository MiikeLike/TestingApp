//
//  ContentView.swift
//  TestNotas
//
//  Created by Mikel Valle on 12/12/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var viewModel: ViewModel = .init() // ViewModel asociado a la vista, inicializado.
    @State var showCreateNote: Bool = false // Estado para controlar la presentación de la vista de creación de notas.
    
    var body: some View {
        NavigationStack { // Contenedor de navegación personalizado que puede manejar el apilamiento de vistas.
            List { // Lista para mostrar las notas.
                ForEach(viewModel.notes) { note in
                    NavigationLink(value: note) { // Enlace de navegación que lleva a la vista de actualización de notas.
                        VStack(alignment: .leading) { // Vista vertical que contiene el título y el texto de la nota.
                            Text(note.title)
                                .foregroundStyle(.primary) // Estilo de primer plano para el título de la nota.
                            Text(note.getText)
                                .foregroundStyle(.secondary) // Estilo de primer plano para el texto de la nota.
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .status) { // Elemento de barra de herramientas en la barra de estado.
                    Button(action: {
                        showCreateNote.toggle() // Botón para mostrar o ocultar la vista de creación de notas.
                    }, label: {
                        Label("Crear Nota", systemImage: "square.and.pencil") // Etiqueta y símbolo del botón de creación de notas.
                            .labelStyle(TitleAndIconLabelStyle()) // Estilo para la etiqueta y el icono.
                    })
                    .buttonStyle(.bordered) // Estilo del botón con borde.
                    .tint(.blue) // Tinte del botón.
                    .bold() // Texto en negrita.
                }
            }
            .navigationTitle("Notas") // Título de navegación para la vista principal.
            .navigationDestination(for: Note.self, destination: { note in
                // Configuración de la navegación a la vista de actualización de notas.
                UpdateNoteView(viewModel: viewModel, id: note.id, title: note.title, text: note.getText)
            })
            .fullScreenCover(isPresented: $showCreateNote) {
                CreateNoteView(viewModel: viewModel) // FullScreen para la vista de creación de notas.
            }
        }
    }
}

#Preview {
    ContentView(viewModel: .init(notes: [Note
        .init(title: "mikel", text: "Texto Prueba", createdAt: .now),
        .init(title: "mikel 2", text: "Texto Prueba 2", createdAt: .now)
]))
}
