//
//  ViewController.swift
//  HelloGoodbye
//
//  Created by Bruce Roettgers on 07.04.19.
//  Copyright © 2019 Dirk Hulverscheidt. All rights reserved.
//

import Cocoa
import SafariServices.SFSafariApplication

class ViewController: NSViewController {

    @IBOutlet var appNameLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appNameLabel.stringValue = "HelloGoodbye";
    }
    
    @IBAction func openSafariExtensionPreferences(_ sender: AnyObject?) {
        SFSafariApplication.showPreferencesForExtension(withIdentifier: "hulverscheidtdirk.HelloGoodbye.BlockerExtension") { error in
            if let _ = error {
                // Insert code to inform the user that something went wrong.

            }
        }
    }

    @IBAction func openDonationPage(_ sender: Any) {
        let url = URL(string: "https://buymeacoff.ee/bruceroet")!
        NSWorkspace.shared.open(url)
    }
    
}
