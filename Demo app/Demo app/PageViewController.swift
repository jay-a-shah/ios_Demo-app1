//
//  PageViewController.swift
//  Demo app
//
//  Created by Jay Shah on 07/03/22.
//

import UIKit

class PageViewController: UIPageViewController {
    var viewControllerList: [UIViewController] = {
        let storyboard = UIStoryboard(name: "SignUpPage", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(identifier: "signUpPage")
        let secondViewController = storyboard.instantiateViewController(identifier: "loginPage")
        return [firstViewController, secondViewController]
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        if let vc = viewControllerList.first{
            self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view.
    }
}
extension PageViewController: UIPageViewControllerDelegate {
    
}
extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController)else {
            return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0 else {
            return nil
        }
        return viewControllerList[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = viewControllerList.firstIndex(of: viewController)else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
        guard ( viewControllerList.count > nextIndex )else {
            return nil
        }
        return viewControllerList[nextIndex]
    }
}
