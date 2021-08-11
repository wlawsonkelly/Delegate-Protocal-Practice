//
//  ViewControllerTwo.swift
//  Delegate-Protocal Practice
//
//  Created by Lawson Kelly on 8/11/21.
//

import UIKit

protocol ColorSelectionDelegate {
    func didtapChoice(color: UIColor)
}

class ViewControllerTwo: UIViewController {

    var colorSelectionDelegate: ColorSelectionDelegate?

    let redButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Red", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
        button.addTarget(self, action: #selector(chooseRed), for: .touchUpInside)
        return button
    }()

    let blueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Blue", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.titleEdgeInsets = UIEdgeInsets(top: 4, left: 8, bottom: 4, right: 8)
        button.addTarget(self, action: #selector(chooseBlue), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(redButton)
        view.addSubview(blueButton)
        redButton.frame = CGRect(x: view.frame.width/2 - 70, y: view.frame.height/2 - 80, width: 140, height: 80)
        blueButton.frame = CGRect(x: view.frame.width/2 - 70, y: view.frame.height/2 + 80, width: 140, height: 80)
    }

    @objc fileprivate func chooseBlue() {
        colorSelectionDelegate?.didtapChoice(color: .blue)
        dismiss(animated: true)
    }

    @objc fileprivate func chooseRed() {
        colorSelectionDelegate?.didtapChoice(color: .red)
        dismiss(animated: true)
    }
}
