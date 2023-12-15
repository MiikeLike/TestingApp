//
//  Note.swift
//  TestNotas
//
//  Created by Mikel Valle on 12/12/23.
//

import Foundation
import SwiftData

@Model
class Note: Identifiable, Hashable{
    @Attribute(.unique) 
    var identifier : UUID
    var title: String
    var text: String?
    var createdAt: Date
    
    var getText: String {
        text ?? ""
    }
    
    init(identifier: UUID = UUID(), title: String, text: String?, createdAt: Date) {
        self.identifier = identifier
        self.title = title
        self.text = text
        self.createdAt = createdAt
    }
}


