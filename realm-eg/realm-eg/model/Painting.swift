//
//  Painting.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import Foundation
import RealmSwift

class Painting: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var paintingTitle: String
    @Persisted var painterId: String
    @Persisted var ownerId: String
    @Persisted var width: Int
    @Persisted var height: Int
    @Persisted var likes: Int
    @Persisted var imageDescription: String
    @Persisted var color: String
}

