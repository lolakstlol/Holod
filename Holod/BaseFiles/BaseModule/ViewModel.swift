//
//  ViewModel.swift
//  Holod
//
//  Created by Артем Холодок on 15.07.2020.
//  Copyright © 2020 Артем Холодок. All rights reserved.
//

import UIKit

open class ViewModel {
    var controller: UIViewController!
    
    init(withController controller: UIViewController) {
        self.controller = controller
    }
    
    open func viewDidLoad() {
    }
    
    open func viewWillAppear(_ animated: Bool) {
    }
    
    open func viewDidAppear(_ animated: Bool) {
    }
    
    open func viewDidDisappear(_ animated: Bool) {
    }
    
    open func viewWillDisappear(_ animated: Bool) {
    }
}
