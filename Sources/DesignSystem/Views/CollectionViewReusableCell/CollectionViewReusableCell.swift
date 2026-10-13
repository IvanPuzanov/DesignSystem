//
//  CollectionViewReusableCell.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 14.10.2026.
//

import SnapKit
import UIKit

public final class CollectionViewReusableCell<View: UIView & ConfigurableView>: UICollectionViewCell {

    // MARK: - Identifier

    public static var reuseIdentifier: String {
        return String(describing: View.self)
    }

    // MARK: - UI

    private let view = View()

    // MARK: - Initialization

    override public init(frame: CGRect) {
        super.init(frame: frame)

        setupUI()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupUI()
    }

    // MARK: - Lifecycle

    override public func prepareForReuse() {
        super.prepareForReuse()

        view.prepareForReuse()
    }

    // MARK: - Private

    private func setupUI() {
        contentView.addSubview(view)

        view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

// MARK: - ConfigurableView

extension CollectionViewReusableCell: ConfigurableView {

    public func configure(with configuration: CollectionViewReusableCellConfiguration<View>) {
        view.configure(with: configuration.viewConfiguration)
    }
}
