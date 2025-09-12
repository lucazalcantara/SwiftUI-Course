//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Lucas  Alcantara  on 12/09/25.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
