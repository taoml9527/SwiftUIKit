//
//  ScanCodeGenerator.swift
//  SwiftUIKit
//
//  Created by Daniel Saidi on 2021-08-03.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This protocol can be implemented any type that can generate
 a ``ScanCodeType`` image from a string.
 */
public protocol ScanCodeGenerator {

    /**
     Generate a scan code for the provided type and string.
     */
    func generateCode(_ type: ScanCodeType, from string: String) -> ImageResource?
}

public extension ScanCodeGenerator {
    
    /**
     Generate a scan code `Image` view for the provided type
     and string.
     */
    func generateCodeView(_ type: ScanCodeType, from string: String) -> Image? {
        guard let image = generateCode(type, from: string) else { return nil }
        return Image(imageResource: image)
    }
}
