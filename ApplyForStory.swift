//
//  ApplyForStory.swift
//  Apollo
//
//  Created by Harshith Sadhu on 2/8/23.
//

import UIKit
import FirebaseFirestore

class ApplyForStory: UIViewController {
    
    @IBOutlet weak var googleDrivePhotos: UITextField!
    @IBOutlet weak var whatDidYouAccomplish: UITextField!
    let database = Firestore.firestore()

    @IBOutlet weak var additionalInfo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func saveData(_ sender: Any) {
        
        let AccomplishedString = whatDidYouAccomplish.text
        
        let googlePhotos = googleDrivePhotos.text
        let additionalInfoString = additionalInfo.text
        
        let docRef = database.document("Users/187837248923")
        
        
        docRef.setData(["additionalInformation":additionalInfoString, "storyText":AccomplishedString, "googlePhotosLink":googlePhotos])
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
