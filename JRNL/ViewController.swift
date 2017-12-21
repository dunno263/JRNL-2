//
//  ViewController.swift
//  JRNL
//
//  Created by M on 18.12.17.
//  Copyright © 2017 Max Engelhardt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UICollectionViewDelegate {

    //MARK: Properties
    
    @IBOutlet weak var TestLabel: UILabel!
    @IBOutlet weak var testTextField: UITextField!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var colViewCalender: UICollectionView!
    @IBOutlet weak var colViewCalCell: UICollectionViewCell!
    
    //MARK: Actions

    @IBAction func testAction(_ sender: UIButton) {
        testTextField.text = "blub"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTextField.delegate = self
        colViewCalender.delegate = self
        
        var bla: UICollectionViewDataSource
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegatetetet
    
    func textFieldShouldReturn(_ textFieldd: UITextField) -> Bool {
        textFieldd.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        TestLabel.text = textField.text
    }

    
}

