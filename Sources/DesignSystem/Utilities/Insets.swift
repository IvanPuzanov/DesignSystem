//
//  Insets.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 29.06.2026.
//

import Foundation

public enum Insets: Equatable, Sendable {
    case eachSide(CGFloat)
    case custom(top: CGFloat, bottom: CGFloat, left: CGFloat, right: CGFloat)
}
