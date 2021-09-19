//
//  Lifts+CoreDataProperties.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//
//

import Foundation
import CoreData


extension Lifts {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Lifts> {
        return NSFetchRequest<Lifts>(entityName: "Lifts")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String
    @NSManaged public var reps: String
    @NSManaged public var sets: String
    @NSManaged public var weight: String

}

extension Lifts : Identifiable {

}
