# 📱 TestNotas - Aplicación de Notas con SwiftUI

> **Aplicación iOS nativa desarrollada con las últimas tecnologías de Apple para demostrar habilidades en desarrollo móvil moderno**

## 🚀 Características Principales

- ✨ **Interfaz moderna y elegante** con SwiftUI
- 📝 **Gestión completa de notas**: Crear, editar, eliminar
- 🔄 **Persistencia de datos** con SwiftData (iOS 17+)
- 📱 **Diseño adaptativo** para todos los dispositivos iOS
- 🧪 **Cobertura completa de tests** unitarios
- 🏗️ **Arquitectura MVVM** limpia y escalable

## 🛠️ Stack Tecnológico

### Frontend & UI
- **SwiftUI** - Framework declarativo moderno de Apple
- **Swift** - Lenguaje de programación nativo
- **iOS 17.1+** - Versión mínima soportada

### Backend & Persistencia
- **SwiftData** - Framework de persistencia de datos moderno
- **Core Data** - Sistema de gestión de datos robusto
- **@Observable** - Patrón de observación reactiva

### Testing & Calidad
- **XCTest** - Framework de testing nativo
- **Test Coverage** - Tests unitarios completos
- **MVVM Testing** - Tests de ViewModel y Model

## 🏗️ Arquitectura del Proyecto

```
TestNotas/
├── 📱 App/
│   ├── TestNotasApp.swift          # Punto de entrada de la aplicación
│   └── ContentView.swift           # Vista principal con navegación
├── 🎯 Model/
│   └── Note.swift                  # Modelo de datos con SwiftData
├── 🧠 ViewModel/
│   └── ViewModel.swift             # Lógica de negocio y estado
├── 🖼️ Views/
│   ├── CreateNoteView.swift        # Vista de creación de notas
│   └── UpdateNoteView.swift        # Vista de edición de notas
├── 💾 Database/
│   └── NoteDataBase.swift          # Gestión de persistencia
└── 🧪 Tests/
    ├── ViewModelTest.swift         # Tests del ViewModel
    └── TestNotasTests.swift        # Tests del modelo
```

## 🔧 Funcionalidades Implementadas

### 📝 Gestión de Notas
- **Creación**: Interfaz intuitiva para crear nuevas notas
- **Edición**: Modificación completa de título y contenido
- **Eliminación**: Borrado seguro con confirmación visual
- **Persistencia**: Almacenamiento automático en dispositivo


### 🚀 Rendimiento
- **Carga instantánea** de notas
- **Actualizaciones reactivas** con @Observable
- **Gestión eficiente** de memoria
- **Persistencia optimizada** con SwiftData

## 🧪 Testing y Calidad

### Cobertura de Tests
- ✅ **ViewModel Tests**: Creación, edición, eliminación
- ✅ **Model Tests**: Inicialización y propiedades
- ✅ **Integration Tests**: Flujo completo de la aplicación

### Métricas de Calidad
- **100% de tests pasando**
- **Código limpio y documentado**
- **Arquitectura escalable**
- **Patrones de diseño modernos**

## 📱 Requisitos del Sistema

- **iOS**: 17.1 o superior
- **Xcode**: 15.0 o superior
- **Swift**: 5.9 o superior
- **Dispositivos**: iPhone, iPad, Mac (Catalyst)


## 🎯 Decisiones de Diseño

### ¿Por qué SwiftUI?
- **Sintaxis declarativa** que simplifica el desarrollo
- **Sincronización automática** entre estado y UI
- **Adaptabilidad nativa** a diferentes dispositivos
- **Integración perfecta** con el ecosistema Apple

### ¿Por qué SwiftData?
- **Framework moderno** que reemplaza Core Data
- **Sintaxis simplificada** para persistencia
- **Rendimiento optimizado** para iOS 17+
- **Integración nativa** con SwiftUI

### ¿Por qué MVVM?
- **Separación clara** de responsabilidades
- **Testabilidad mejorada** de la lógica de negocio
- **Mantenibilidad** del código a largo plazo
- **Escalabilidad** para funcionalidades futuras


## 📊 Métricas del Proyecto

- **Líneas de código**: ~500
- **Archivos Swift**: 9
- **Tests implementados**: 6
- **Vistas SwiftUI**: 4
- **Tiempo de desarrollo**: Optimizado para prueba técnica

## 🤝 Contribución

Este proyecto fue desarrollado como **prueba técnica** para demostrar habilidades en:
- Desarrollo iOS nativo con SwiftUI
- Arquitectura de software limpia
- Implementación de patrones MVVM
- Testing y calidad de código
- Uso de tecnologías modernas de Apple

## 📄 Licencia

Desarrollado como proyecto de demostración técnica. Todos los derechos reservados.

---

## 👨‍💻 Desarrollador

**Mikel Valle**  
*Desarrollador iOS Senior*  
- 🚀 Especializado en SwiftUI y desarrollo nativo
- 🏗️ Experiencia en arquitecturas limpias y escalables
- 🧪 Defensor de testing y calidad de código
- 📱 Apasionado por la experiencia de usuario móvil

---

> **💡 Esta aplicación demuestra un dominio completo de las tecnologías modernas de Apple, implementando las mejores prácticas de desarrollo iOS con un código limpio, testeable y escalable.**
