//
//  FavoriteViewController.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

final class FavoritesViewController: UIViewController {
    
    // MARK: - Initializers
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Functions
    
    private func setupUI() { 
        title = "Favorites"
    }
}
