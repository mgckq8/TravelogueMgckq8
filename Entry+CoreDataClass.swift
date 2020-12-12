//
//  Entry+CoreDataClass.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//
//

import Foundation
import CoreData

@objc(Entry)
public class Entry: NSManagedObject {
    var date: Date?{
        get{
            return rawDate as Date?
        }
        set{
            rawDate = newValue as NSDate?
        }
    }
    var image: UIImage? {
        get {
            if let imageData = picture as Data? {
                return UIImage(data: imageData)
            } else {
                return nil
            }
        }
        set {
            if let image = newValue {
                picture = convertImage(image: image)
            }
        }
    }
}
