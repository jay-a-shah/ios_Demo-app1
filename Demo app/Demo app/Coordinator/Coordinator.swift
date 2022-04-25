//
//  Coordinator.swift
//  Demo app
//
//  Created by Jay Shah on 15/03/22.
//

import Foundation
import UIKit
protocol Coordinator {
    var navController: UINavigationController? { get set }
    func start()
    func finishToRoot()
    func stop()
}
