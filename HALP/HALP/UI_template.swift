//
//  UI_template.swift
//  HALP
//
//  Created by Qihao Leng on 4/30/18.
//  Copyright © 2018 Team Zero. All rights reserved.
//

import UIKit


class NewViewController: UIViewController {
	
	// This function handles everything that needs to be set up once for this UI.
	// This function is called only after the UIViewController is loaded and never again.
	override func viewDidLoad() {
		super.viewDidLoad()
	}
	
	// This function I haven't figure out any significant usage yet. 		--Qihao
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	
	// This function handles everything that needs to be set up everytime for this UI.
	// This function is called after each time the UIViewController is brought to front.
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
	}
}
