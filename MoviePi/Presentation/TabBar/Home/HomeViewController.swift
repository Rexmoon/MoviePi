//
//  HomeViewController.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

final class HomeViewController<R: HomeRouter>: UIViewController {
    
    // MARK: - Properties
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        return button
    }()
    
    private let viewModel: HomeViewModel<R>
    
    // MARK: - Initializers

    init(viewModel: HomeViewModel<R>) {
        self.viewModel = viewModel
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
    
    // MARK: - Functions
    
    private func setupUI() {
        title = "Home"
        setupConstraints()
    }
    
    private func setupConstraints() {
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 100),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    // MARK: Actions
    
    @objc
    private func didTapButton(_ sender: UIButton) {
        viewModel.didTapItem()
    }
}
