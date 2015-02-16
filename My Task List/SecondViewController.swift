//
//  SecondViewController.swift
//  My Task List
//
//  Created by Nick Roney on 2/16/15.
//  Copyright (c) 2015 Nick Roney. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    //These are what storyboard connects the textboxes with.
    // ! sets variable to default to null, for declaring something that doesnt exist at the moment.
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func buttonAddTask_Click(sender: UIButton){
        
        taskMgr.addTask(txtTask.text, desc: txtDesc.text);
        
        
        //close the keyboard
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        
        //take us back to the first tab
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    //IOS Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }


}

