//
//  AnimalModel.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import SwiftUI


enum Language: String, CaseIterable {
    case english = "English"
    case french = "French"
    case spanish = "Spanish"
}

func getLanguageCode(language: Language) -> String {
    var result = ""
    
    switch language {
    case .english:
        result = "en"
    case .french:
        result = "fr"
    case .spanish:
        result = "es"
    }
    
    return result
}



struct AnimalModel: Identifiable {
    let id: UUID = UUID()
    var image: AnimalImage
    var color: Color
    var name: [Language: [String]]
    
    func getAnimalName(in language: Language) -> String {
        //return name[language]?.first ?? ""
        return ""
    }
    
    
    func getFirstName(animalModel: AnimalModel, lang: Language) -> String {
        return animalModel.name[lang]?.first ?? ""
    }
}
