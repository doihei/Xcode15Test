//
//  TestView.swift
//  Xcode15Test
//
//  Created by Doi Daihei on 2023/12/06.
//

import UIKit
import Reusable
import AFMacro

final class TestView: UIView, NibOwnerLoadable {
    
    @IBOutlet private weak var stackView: UIStackView!
    
    /// frame指定のinitializer
    /// ![Test](iconTest)
    /// - Parameter frame: CGRect
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNibContent()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNibContent()
    }
    
    // TODO: hey
    fileprivate func setup(_ hasIcon: Bool = false) {
        if hasIcon {
            stackView.addArrangedSubview(UIImageView(image: .iconTest))
        }
        
        let label1 = UILabel()
        label1.text = String(localized: "TestLabel")
        stackView.addArrangedSubview(label1)
        let label2 = UILabel()
        label2.text = String(localized: "TestLabel")
        stackView.addArrangedSubview(label2)
        let label3 = UILabel()
        label3.text = String(localized: "TestLabel")
        stackView.addArrangedSubview(label3)
        
        let label4 = UILabel()
        
        stackView.addArrangedSubview(label4)
    }
}

// TODO: hey
#Preview("iconなし") {
    let view = TestView(frame: .init(x: 0, y: 0, width: 300, height: 300))
    view.setup()
    return view
}

// TODO: hey
#Preview("iconあり") {
    let view = TestView(frame: .init(x: 0, y: 0, width: 300, height: 300))
    view.setup(true)
    return view
}
