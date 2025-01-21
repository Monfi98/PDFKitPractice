//
//  Models.swift
//  PDFKitPractice
//
//  Created by 신승재 on 1/21/25.
//

import Foundation
import PDFKit

struct NotablePDF: Identifiable {
  let id: UUID = UUID()
  let createdAt: Date
  var modifiedAt: Date
  var title: String
  var pdfDocument: PDFDocument
  var pages: [page]?
}

struct NotablePDFMetadata: Identifiable {
  let id: UUID
  let title: String
  let createdAt: Date
  var modifiedAt: Date
  
  init(from pdf: NotablePDF) {
    self.id = pdf.id
    self.title = pdf.title
    self.createdAt = pdf.createdAt
    self.modifiedAt = pdf.modifiedAt
  }
}

struct page: Identifiable {
  let id: UUID = UUID()
  let index: Int
  var textBoxs: [TextBox]?
  var memo: String?
}

struct TextBox: Identifiable {
  var id: UUID = UUID()
  var text: String
  var position: CGPoint
}
