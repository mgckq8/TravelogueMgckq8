//
//  Entry+CoreDataProperties.swift
//  TravelogueMgckq8
//
//  Created by Melissa Crozier on 12/10/20.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var entryTitle: String?
    @NSManaged public var entryRawDate: Date?
    @NSManaged public var entryDescription: String?
    @NSManaged public var entryPhoto: Data?
    @NSManaged public var trip: Trip?

}

extension Entry : Identifiable {

}
