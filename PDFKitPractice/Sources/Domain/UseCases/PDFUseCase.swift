//
//  UseCase.swift
//  PDFKitPractice
//
//  Created by 신승재 on 1/21/25.
//

import Foundation

protocol PDFUseCase {
  /// 새로운 NotablePDF를 생성합니다.
  /// - Parameter url: 해당 pdf 파일이 위치해 있는 url
  /// - Throws:
  ///   - `DomainError.invalidPDFFormat`: PDF 형식이 아닐 경우
  func createPDF(url: String) throws
  
  /// 모든 PDF의 메타데이터를 가져옵니다.
  /// - Returns: 저장된 모든 PDF의 메타데이터
  func getAllPDFMetaDatas() throws -> [NotablePDFMetadata]?
}
