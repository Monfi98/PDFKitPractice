//
//  DomainErrors.swift
//  PDFKitPractice
//
//  Created by 신승재 on 1/21/25.
//

import Foundation

enum DomainErrors: LocalizedError {
  case invalidPDFFormat
  
  var errorDescription: String? {
    switch self {
    case .invalidPDFFormat:
      return "PDF 형식이 아닙니다."
    }
  }
}
