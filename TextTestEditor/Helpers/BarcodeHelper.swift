//
//  BarcodeHelper.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 05.06.2021.
//

import Foundation
import CoreImage
import SwiftUI

class Barcode {

  class func fromString(string : String) -> Image? {

    let data = string.data(using: .ascii)
    let filter = CIFilter(name: "CIQRCodeGenerator")
    filter?.setValue(data, forKey: "inputMessage")
    let transform = CGAffineTransform(scaleX: 3, y: 3)
    if let ciImage = filter?.outputImage?.transformed(by: transform) {
        return Image(uiImage: UIImage(ciImage: ciImage))
    } else {
        return nil
    }
  }

}
