//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Caio Ortu on 3/19/21.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
