//
//  PageViewController.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit

class PageViewController: UIPageViewController {
    
    //MARK: - Variables
    var viewControllerList: [UIViewController] = {
        let storyboard = UIStoryboard(name: Constants.storyboardSignUpPage , bundle: nil)
        let firstViewController = storyboard.instantiateViewController(identifier: Identifiers.signUpPageViewController.rawValue)
        let secondViewController = storyboard.instantiateViewController(identifier: Identifiers.loginPageViewController.rawValue)
        return [firstViewController, secondViewController]
    }()
    
    //MARK: - View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let vc = viewControllerList.first{
            self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        }
    }
}

//MARK: - UIPageViewControllerDelegate
extension PageViewController: UIPageViewControllerDelegate {
}

//MARK: - UIPageViewControllerDataSource
extension PageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController)else {
            return nil
        }
        let previousIndex = viewControllerIndex - Constants.ONE
        guard previousIndex >= Constants.ZERO else {
            return nil
        }
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController)else {
            return nil
        }
        let nextIndex = viewControllerIndex + Constants.ONE
        guard ( viewControllerList.count > nextIndex )else {
            return nil
        }
        return viewControllerList[nextIndex]
    }
}
