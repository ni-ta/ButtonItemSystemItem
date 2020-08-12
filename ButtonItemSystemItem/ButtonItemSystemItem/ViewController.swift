//  ViewController.swift
//  Copyright © 2020 ni-ta. All rights reserved.

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		DispatchQueue.main.async {
			// ↓の.actionの部分を変更すると画像が変化されます
			self.imageView.image = UIBarButtonItem.SystemItem.action.image()
		}
	}


}

