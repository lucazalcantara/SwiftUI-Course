//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Lucas  Alcantara  on 26/11/25.
//
//

public import Foundation
public import CoreData


public typealias CandyCoreDataPropertiesSet = NSSet

extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?

    public var wrappedName: String {
        name ?? "Unknown Candy"
    }
}

extension Candy : Identifiable {

}
