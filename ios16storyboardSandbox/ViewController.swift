//
//  ViewController.swift
//  ios16storyboardSandbox
//
//  Created by tichinose1 on 2023/01/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!

    @IBAction func didTapButton(_ sender: Any) {
        debugPrint("hoge")

        label.text = "fuga"

        guard let vc = storyboard?.instantiateViewController(withIdentifier: "Hoge") else {
            fatalError()
        }
        present(vc, animated: true)
    }

}

