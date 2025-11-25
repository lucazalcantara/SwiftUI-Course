//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Lucas  Alcantara  on 25/11/25.
//
//

public import Foundation
public import CoreData


public typealias MovieCoreDataPropertiesSet = NSSet

extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String?
    @NSManaged public var director: String?
    @NSManaged public var year: Int16
    
    public var wrappedTitle: String {
        title ?? "Unknown Title"
    }

}

extension Movie : Identifiable {

}
