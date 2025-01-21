//
//  FileSelectionView.swift
//  PDFKitPractice
//
//  Created by 신승재 on 1/20/25.
//

import SwiftUI

struct FileSelectionView: View {
  
  @State private var importing = false
  @State private var pdfFiles: URL?
  
  var body: some View {
    List {
      Button(action: {
        importing = true
      }) {
        Text("+")
      }.fileImporter(
        isPresented: $importing,
        allowedContentTypes: [.pdf]
      ) { result in
        switch result {
        case .success(let file):
          print(file.absoluteString)
        case .failure(let error):
          print(error.localizedDescription)
        }
      }
    }
  }
}

#Preview {
  FileSelectionView()
}
