//
//  BaseViewController.swift
//  ysBaseViewController
//
//  Created by Ethan Lee on 2022/05/10.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    
    var viewModel: BaseViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        viewModel?.viewDidLoad()
    }
    
    open func setupView() {}
    open func setupConstraints() {}
    open func bind(to viewModel: BaseViewModel?) {}
    
    open func configure() {
        bind(to: viewModel)
        setupView()
        setupConstraints()
    }
    
}
