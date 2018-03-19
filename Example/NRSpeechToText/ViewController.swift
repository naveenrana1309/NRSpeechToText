//
//  ViewController.swift
//  NRSpeechToText
//
//  Created by Naveen Rana on 03/19/2018.
//  Copyright (c) 2018 Naveen Rana. All rights reserved.
//

import UIKit
import Speech
import NRSpeechToText

class ViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var microphoneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func microphoneButtonPressed(_ sender: AnyObject) {
        NRSpeechToText.shared.authorizePermission { (authorize) in
            if authorize {
                if NRSpeechToText.shared.isRunning {
                    NRSpeechToText.shared.stop()
                    OperationQueue.main.addOperation {
                        self.microphoneButton.setTitle("Start Recording", for: .normal)
                        
                    }
                    
                }
                else {
                    OperationQueue.main.addOperation {
                        self.microphoneButton.setTitle("Stop Recording", for: .normal)
                        
                    }
                    self.startRecording()
                    
                }
            }
        }
        
    }
    
    func startRecording() {
        NRSpeechToText.shared.startRecording {(result: String?, isFinal: Bool, error: Error?) in
            if error == nil {
                self.textView.text = result
            }
        }
    }
    
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        // Called when the availability of the given recognizer changes
        
    }
    
}

