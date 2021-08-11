//
//  ViewController.swift
//  Delegate-Protocal Practice
//
//  Created by Lawson Kelly on 8/11/21.
//

import UIKit

class ViewController: UIViewController, ColorSelectionDelegate {

    func didtapChoice(color: UIColor) {
        self.view.backgroundColor = color
    }

    private let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Choose A Color", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
        button.addTarget(self, action: #selector(goToChoiceScreen), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(button)
        button.sizeToFit()
        button.frame = CGRect(x: view.frame.width/2 - button.frame.width/2, y: view.frame.height/2 - button.frame.height/2, width: button.frame.width + 20, height: button.frame.height + 20)
    }

    @objc fileprivate func goToChoiceScreen() {
        let vc2 = ViewControllerTwo()
        vc2.modalPresentationStyle = .fullScreen
        vc2.colorSelectionDelegate = self
        self.present(vc2, animated: true)
    }
}
