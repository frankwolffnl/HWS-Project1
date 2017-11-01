//
//  ViewController.swift
//  Project1
//
//  Created by Frank Wolff on 01/11/2017.
//  Copyright © 2017 Frank Wolff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var pictures = [String]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let fm = FileManager.default
		let path = Bundle.main.resourcePath!
		let items = try! fm.contentsOfDirectory(atPath: path)
		
		for item in items {
			if item.hasPrefix("nssl") {
				pictures.append(item)
			}
		}
		print(pictures)
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

