//
//  ViewController.swift
//  APDownloaderExample
//
//  Created by Apokrupto on 25/10/2017.
//  Copyright © 2017 Apokrupto. All rights reserved.
//

import UIKit
import APDownloader

struct Todo: JSONConstructible {
    init?(_ json: JSONFormat) {
        return nil
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "www.google.com")!
        let config = HTTP.Config(method: .get)
        
        HTTP.download(url: url, config: config, downloader: NetworkDownloader()) { (result: DownloadResult<Todo>) in
            switch result {
            case .success(let response):
                print(response)
                
            case .failure(let error):
                print(error)
            }
        }
    }

}

