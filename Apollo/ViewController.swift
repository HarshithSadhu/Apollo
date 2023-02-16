//
//  ViewController.swift
//  Apollo
//
//  Created by Harshith Sadhu on 1/16/23.
//
import UIKit
import FirebaseDatabase
//Test Change Harshith Change
class ViewController: UIViewController {
    
    //test
    
    private let database = Database.database().reference()
    
    @IBOutlet weak var quote: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quote.adjustsFontSizeToFitWidth = true
        generateQuote()
        
        
    }
    @IBAction func refreshQuote(_ sender: Any) {
        
        
        generateQuote()
        
        
        

        
        
    }
    
    func generateQuote(){
        let randomInt = Int.random(in: 0..<5420)
    
        database.child(String(randomInt)).observeSingleEvent(of: .value, with: {snapshot in
        
        guard let value = snapshot.value as? [String: Any] else{
        
        return
        }
        
        print("Value: \(value)")
            print("keyWord")
            print()
            
            
            //self.quote.numberOfLines = 1
            self.quote.adjustsFontSizeToFitWidth = true
            
            self.quote.text =   (value["quoteText"] as! String) + " - " + (value["quoteAuthor"] as! String)
            
            
        })
        
        
    }
    

}

