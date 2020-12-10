//
//  Entry+CoreDataClass.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//
//

import UIKit
import CoreData

@objc(Entry)
public class Entry: NSManagedObject {
    
    var addDate: Date? {
        get {
            return entryRawDate as Date?
        }
        set {
            entryRawDate = newValue as NSDate?
        }
    }
    
    var image: UIImage? {
        get {
            if let imageData = entryImage as Data? {
                return UIImage(data: imageData)
            } else {
                return nil
            }
        }
        
        set {
            if let image = newValue {
                entryImage = convertImageToNSData(image: image)
            }
        }
    }
    
}


