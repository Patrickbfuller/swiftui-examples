//
//  User.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import Foundation
import RealmSwift

class User: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var starSign: String
    @Persisted var favoriteColor: String
    @Persisted var likes: Int
    @Persisted var accountBalance: Double
}
