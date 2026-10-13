//
//  CollectionViewReusableCellConfiguration.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 14.10.2026.
//

import Foundation

public struct CollectionViewReusableCellConfiguration<View: ConfigurableView>: Equatable {
    public let viewConfiguration: View.ViewConfiguration

    public init(viewConfiguration: View.ViewConfiguration) {
        self.viewConfiguration = viewConfiguration
    }
}
