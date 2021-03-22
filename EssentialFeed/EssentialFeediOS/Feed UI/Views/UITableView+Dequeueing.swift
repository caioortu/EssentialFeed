//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Caio Ortu on 3/22/21.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
