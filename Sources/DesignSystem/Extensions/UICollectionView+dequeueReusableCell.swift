//
//  UICollectionView+dequeueReusableCell.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 14.10.2026.
//

import UIKit

public extension UICollectionView {
    func dequeueReusableCell<View: UIView & ConfigurableView>(
        with configuration: CollectionViewReusableCellConfiguration<View>,
        for indexPath: IndexPath
    ) -> UICollectionViewCell {
        let id = CollectionViewReusableCell<View>.reuseIdentifier
        register(CollectionViewReusableCell<View>.self, forCellWithReuseIdentifier: id)

        let cell = dequeueReusableCell(withReuseIdentifier: id, for: indexPath)
        (cell as? CollectionViewReusableCell<View>)?.configure(with: configuration)
        return cell
    }
}
