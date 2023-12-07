//
//  TestViewController.swift
//  Xcode15Test
//
//  Created by Doi Daihei on 2023/12/05.
//

import UIKit
import Reusable

final class TestViewController: UIViewController, StoryboardBased {
    
    @IBOutlet private weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.addArrangedSubview(UIImageView(image: .iconTest))
        
        let label = UILabel()
        label.text = String(localized: "TestLabel")
        stackView.addArrangedSubview(label)
    }
}

#Preview {
//    let vc = UIStoryboard(name: "TestViewController", bundle: .main).instantiateInitialViewController() as! TestViewController
    let vc = TestViewController.instantiate()
    return vc
}
