//
//  UseCase.swift
//  PDFKitPractice
//
//  Created by 신승재 on 1/21/25.
//

import Foundation

protocol UseCase {
  /// 새로운 NotablePDF를 생성합니다.
  /// - Parameter url: 해당 pdf 파일이 위치해 있는 url
  /// - Throws:
  ///   - `DomainError.invalidPDFFormat` : PDF 형식이 아닐 경우
  func createPDF(url: String)
}
