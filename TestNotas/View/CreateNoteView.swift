//
//  CreateNoteView.swift
//  TestNotas
//
//  Created by Mikel Valle on 13/12/23.
//

import SwiftUI

struct CreateNoteView: View {
    var viewModel: ViewModel
    @State var title: String = ""
    @State var text: String = ""
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("", text: $title, prompt: Text("Introducir Título"), axis: .vertical)
                    TextField("", text: $text, prompt: Text("Introducir Texto"), axis: .vertical)
                } footer: {
                    Text("* El título es obligatorio")
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cerrar")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        viewModel.createNotewith(title: title, text: text)
                        dismiss()
                    } label: {
                        Text("Crear Nota")
                            .bold()
                    }
                }
            }
        }
        .navigationTitle("Nueva Nota")
        .navigationBarTitleDisplayMode(.large)
    }
}

#Preview {
    CreateNoteView(viewModel: .init())
}
