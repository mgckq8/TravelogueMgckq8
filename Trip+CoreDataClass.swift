//
//  Trip+CoreDataClass.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//
//

import Foundation
import CoreData

@objc(Trip)
public class Trip: NSManagedObject {
    
    convenience init?(title: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let context = appDelegate?.persistentContainer.viewContext
            else {
                return nil
            }
        
        self.init(entity: Trip.entity(), insertInto: context)
        self.tripTitle = title
    }
}
