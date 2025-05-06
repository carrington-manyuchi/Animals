//
//  Speech.swift
//  Animals
//
//  Created by Manyuchi, Carrington C on 2025/05/06.
//

import Foundation
import AVFoundation

func utter(text: String, language: Language) {
    let utterance = AVSpeechUtterance(string: text)
    utterance.voice = AVSpeechSynthesisVoice(language: getLanguageCode(language: language))
    utterance.rate = 0.3
    let synthesizer = AVSpeechSynthesizer()
    synthesizer.speak(utterance)
}
