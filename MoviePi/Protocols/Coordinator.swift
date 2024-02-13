//
//  Coordinator.swift
//  MoviePi
//
//  Created by User on 1/26/24.
//

import UIKit

protocol Coordinator {
    func start()
    var primaryViewController: UIViewController { get }
}
