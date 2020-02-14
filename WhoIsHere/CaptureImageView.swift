//
//  CaptureImageView.swift
//  WhoIsHere
//
//  Created by Vincent Valentin on 10/02/2020.
//  Copyright © 2020 Vincent Valentin. All rights reserved.
//

import Foundation
import SwiftUI

struct CaptureImageView {
    
    /// MARK: - Properties
    @Binding var isShown: Bool
    @Binding var image: Image?
    @Binding var uiImage: UIImage?
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image, uiImage: $uiImage)
    }
}

extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        /// Default is images gallery. Un-comment the next line of code if you would like to test camera
        //    picker.sourceType = .camera
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}
