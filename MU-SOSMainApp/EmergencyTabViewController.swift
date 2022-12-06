//
//  EmergencyTabViewController.swift
//  MU-SOSMainApp
//
//  Created by Kayleigh F. Rucinski on 11/29/22.
//

import UIKit
import Firebase
import FirebaseDatabase

class EmergencyTabViewController: UIViewController {
    private var db = Firestore.firestore()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    
//    FirebaseDatabase db = FirebaseDatabase.instance;
    let notifDocName = "NbBuBQXNb7tBOkpxIsG6"
    
  //  @IBAction func suspiciousPersonButton(_ sender: Any) {
        
        
//        db.collection("notification").document(notifDocName).setData([
//            "identity" : "self",
//            "importance" : "3",
//            "notifID" : "1",
//            "notifName" : "Fire",
//            "state" : "true",
//            "submit" : "true",
//            "timestamp" : "12/04/22"
//        ]) { err in
//            if let err = err {
//                print ("Error writing document: \(err)")
//            } else {
//                print("Document successfully written!")
//            }
//
//        }
//        db.collection("notification").doc(notifDocName)
//            .get()
//            .then(function(doc){
//                if(doc.exists) {
//                    console.log("Document Data:", doc.data());
//                }
//                else {
//                    console.log("No such document!");
//                }
//            }) .catch(function(error){
//                console.log("Error getting the document!", error);
//            });
 //   } //end sus person button
    
    @IBOutlet weak var susPersonEmergency: UIButton!
    @IBOutlet weak var medicalEmergency: UIButton!
    @IBOutlet weak var mentalHealthEmergency: UIButton!
    @IBOutlet weak var fireEmergency: UIButton!
    @IBOutlet weak var brokenPropEmergency: UIButton!
    @IBOutlet weak var shooterEmergency: UIButton!
    @IBOutlet weak var carCrashEmergency: UIButton!
    @IBOutlet weak var carHazardEmergency: UIButton!
    @IBOutlet weak var animalEmergency: UIButton!
    @IBOutlet weak var other: UIButton!
    
    //how do we use the selector
    let selector = #selector(EmergencyTabViewController.changeButton)
    @IBAction func changeButton(sender: UIButton) {
        switch sender {
        case susPersonEmergency:
            //EXAMPLE BELOW!!!!
//            var sus = "Suspicious Person";
//            db.notification.insertObject(sus, at: notifName);
            //grab database notification collection
            //insert button name into notif name attribute
            print("Sus Person")
        case medicalEmergency:
            print ("Med Emergency")
        case mentalHealthEmergency:
            print ("Mental Health Emerg")
        case fireEmergency:
            print ("Fire Emerg")
        case brokenPropEmergency:
            print ("Broken Prop Emerg")
        case shooterEmergency:
            print ("Shooter Emerg")
        case carCrashEmergency:
            print ("Car crash Emerg")
        case carHazardEmergency:
            print ("Car Hazard Emerg")
        case animalEmergency:
            print ("Animal Emerg")
        case other:
            print ("Other Emerg")
        default:
            break
        }

    }
    
}
