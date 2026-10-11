//
//  UITableView+dequeueReusableCell.swift
//  DesignSystem
//
//  Created by Ivan Puzanov on 29.06.2026.
//

import UIKit

public extension UITableView {
    func dequeueReusableCell<View: UIView & ConfigurableView>(
        with configuration: TableViewReusableCellConfiguration<View>
    ) -> UITableViewCell {
        let id = TableViewReusableCell<View>.reuseIdentifier
        if let cell = dequeueReusableCell(withIdentifier: id) as? TableViewReusableCell<View> {
            cell.configure(with: configuration)
            return cell
        } else {
            register(TableViewReusableCell<View>.self, forCellReuseIdentifier: id)
            return dequeueReusableCell(with: configuration)
        }
    }
}
