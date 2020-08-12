//  UIBarButtonItem.SystemItem+extention.swift
//  Copyright © 2020 ni-ta. All rights reserved.

import UIKit

extension UIBarButtonItem.SystemItem {
    func image() -> UIImage? {
        let tempItem = UIBarButtonItem(barButtonSystemItem: self,
                                       target: nil,
                                       action: nil)

        let bar = UIToolbar()
        bar.setItems([tempItem],
                     animated: false)
        bar.snapshotView(afterScreenUpdates: true)

        // imageを取得する
		guard let itemView = tempItem.value(forKey: "view") as? UIView else {
			return nil
		}
        for view in itemView.subviews {
            if let button = view as? UIButton,
                let image = button.imageView?.image {
                return image.withRenderingMode(.alwaysTemplate)
            }
        }
        return nil
    }
}
