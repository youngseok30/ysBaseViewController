//
//  BaseUILabel.swift
//  ysBaseViewController
//
//  Created by Ethan Lee on 2022/05/10.
//

import UIKit

class BaseUILabel: UILabel {
    
    var padding: UIEdgeInsets = .zero {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: padding))
    }

    override var intrinsicContentSize: CGSize {
        var contentSize = super.intrinsicContentSize
        contentSize.height += padding.top + padding.bottom
        contentSize.width += padding.left + padding.right

        return contentSize
    }

}
