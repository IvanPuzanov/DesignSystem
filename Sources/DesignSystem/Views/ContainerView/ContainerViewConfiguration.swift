//
//  ContainerViewConfiguration.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 29.06.2026.
//

import Foundation

public struct ContainerViewConfiguration<View: ConfigurableView>: Equatable {
    public let viewConfiguration: View.ViewConfiguration
    public let insets: Insets

    public init(viewConfiguration: View.ViewConfiguration, insets: Insets) {
        self.viewConfiguration = viewConfiguration
        self.insets = insets
    }
}
