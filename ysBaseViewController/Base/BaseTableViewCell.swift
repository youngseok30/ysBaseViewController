//
//  BaseTableViewCell.swift
//  ysBaseViewController
//
//  Created by Ethan Lee on 2022/05/10.
//

import UIKit

class BaseTableViewCell<T>: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle = .default, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var model: T? {
        didSet {
            guard let model = model else { return }
            bind(to: model)
        }
    }

    open func configure() {
        setupView()
        setupConstraints()
    }
    
    open func setupView() {}
    open func setupConstraints() {}
    open func bind(to model: T?) {}
    
}
