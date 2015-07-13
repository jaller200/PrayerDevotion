//
//  Prayer.swift
//  PrayerDevotion
//
//  Created by Jonathan Hart on 4/18/15.
//  Copyright (c) 2015 Jonathan Hart. All rights reserved.
//

import Foundation
import CoreData

class Prayer: NSManagedObject {

    @NSManaged var category: String // This is the category that the prayer is currently in
    @NSManaged var name: String // The "shortName" that is displayed on each cell in the tableView
    @NSManaged var creationDate: NSDate // The date that the prayer was created
    @NSManaged var details: String // The details of the prayer ("who", "what", "why", etc.)
    @NSManaged var addedDate: NSDate? // This is the date that the prayer is due on (for now... TODO: Add ability for multiple due dates)
    @NSManaged var weekday: String? // This is the string representation of the weekly weekday to repeat the prayer on
    @NSManaged var answered: Bool // A boolean to determine whether or not the prayer has been answered
    @NSManaged var answeredNotes: String // These are the notes for the answered section of the prayer
    @NSManaged var prayerType: String? // This is the type of the prayer (On_Date, Daily, or Weekly) that the user may have set
    @NSManaged var isDateAdded: Bool // This is the boolean that determines whether or not a date was added to the prayer
    @NSManaged var answeredTimestamp: NSDate // This is the date of the time when the prayer was answered
    @NSManaged var priority: Int16 // This is the priority of the prayer (0 - None, 1, 2, and 3)
    
    @NSManaged var alerts: NSOrderedSet // This is the ordered set of the alerts for the selected prayer
}