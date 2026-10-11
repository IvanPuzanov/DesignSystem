//
//  ConfigurableView.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 29.06.2026.
//

import Foundation

@MainActor
public protocol ConfigurableView {
    associatedtype ViewConfiguration: Equatable

    func configure(with configuration: ViewConfiguration)
    func prepareForReuse()
}

public extension ConfigurableView {
    func prepareForReuse() {}
}
