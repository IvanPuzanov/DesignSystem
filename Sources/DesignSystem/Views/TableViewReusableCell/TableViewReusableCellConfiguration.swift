//
//  TableViewReusableCellConfiguration.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 29.06.2026.
//

import Foundation

public struct TableViewReusableCellConfiguration<View: ConfigurableView>: Equatable {
    public let viewConfiguration: View.ViewConfiguration

    public init(viewConfiguration: View.ViewConfiguration) {
        self.viewConfiguration = viewConfiguration
    }
}
