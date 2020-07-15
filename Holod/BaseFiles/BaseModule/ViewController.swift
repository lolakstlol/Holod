//
//  ViewController.swift
//  Holod
//
//  Created by Артем Холодок on 15.07.2020.
//  Copyright © 2020 Артем Холодок. All rights reserved.
//

import UIKit
import RxAlamofire
import RxSwift
import RxCocoa

open class ViewController<T: ViewModel>: UIViewController {
    
    public var viewModel: T?
  
    

    override open func viewDidLoad() {
       super.viewDidLoad()
      
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override open func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override open func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}
