//
//  ObservableModel.swift
//  WhoIsHere
//
//  Created by Vincent Valentin on 12/02/2020.
//  Copyright © 2020 Vincent Valentin. All rights reserved.
//

import SwiftUI
import Combine
import Firebase


class ObservableModel: ObservableObject {
    static let shared = ObservableModel()
    @Published var students = [Student]()
    @Published var connected = (Auth.auth().currentUser != nil)
    @Published var email = Auth.auth().currentUser?.email
    @Published var inside = false
}
