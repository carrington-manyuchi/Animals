//
//  LanguageModel.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import Foundation
import SwiftUI


struct LanguageModel: Identifiable {
    let id: UUID = UUID()
    let language: Language
    let flag: Flag? 
}
