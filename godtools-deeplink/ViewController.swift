//
//  ViewController.swift
//  godtools-deeplink
//
//  Created by Michael Harrison on 11/5/16.
//  Copyright © 2016 Cru Global. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	

	@IBAction func openDeeplink() {
		
		GodToolsDeeplink
			.generate()
			.setLanguageWithCode("en")
			.setPackageWithCode("kgp")
			.setPageWithPageNumber(3)
			.registerReferrer(withAppID: "org.cru.jfp", referrerUserID: NSUUID.init().uuidString)
			.open()
		
	}
	

}

