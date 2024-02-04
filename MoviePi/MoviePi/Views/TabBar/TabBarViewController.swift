//
//  TabBarController.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

final class TabBarViewController<R: TabBarRouter>: UITabBarController {
    
    // MARK: - Properties
    
    private let viewModel: TabBarViewModel<R>
    
    // MARK: - Initializers
    
    init(viewModel: TabBarViewModel<R>) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Functions
    
    private func setupUI() {
        tabBar.backgroundColor = .gray.withAlphaComponent(0.2)
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        viewModel.didSelect(tag: item.tag)
    }
}
